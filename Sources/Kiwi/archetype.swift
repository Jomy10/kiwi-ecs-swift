@usableFromInline
typealias ArchRowId = UInt32

//===================
// Component Storage
//===================

/// Contains the component values for all entities in an archetype of one
/// type of component
struct ComponentColumn<T> {
	var components: [T]

	init() {
		self.components = []
	}
}

//===========
// Archetype
//===========

struct Archetype {
	/// { id => ComponentColumn }
	private var components: [ComponentId: UnsafeMutableRawPointer]
	/// Used only for finding new ids for the next entity added
	private var availableEntityRows: [ArchRowId]
	/// index into this array = ArchRowId
	/// when entry is nil, the ArchRowId is available. Used to filter the
	/// components arrrays to contain only alive entities
	private var entities: [EntityId?]
    private let allocatedComponentsBuffer: UnsafeMutablePointer<ComponentColumn<Any>>
}

internal extension Archetype {
	/// - components: the ids of the components
    init(components componentIds: [ComponentId]) {//, sizes: [Int]) {
		self.components = Dictionary<ComponentId, UnsafeMutableRawPointer>(minimumCapacity: componentIds.count)
		self.availableEntityRows = []
		self.entities = []

		let compColumns = UnsafeMutablePointer<ComponentColumn<Any>>.allocate(capacity: componentIds.count)
        self.allocatedComponentsBuffer = compColumns
       
        componentIds.enumerated().forEach { (i, compId) in
            let colPtr = compColumns.advanced(by: i)
            colPtr.initialize(to: ComponentColumn())
            self.components[compId] = UnsafeMutableRawPointer(colPtr)
        }
	}

	func dealloc() {
        self.allocatedComponentsBuffer.deallocate()
	}

	/// Get an empty entity archrow id
	@inlinable
	mutating func newArchRowId(entity: EntityId) -> ArchRowId {
		if let id = self.availableEntityRows.popLast() {
			self.entities[Int(id)] = entity
			return id
		} else {
			let id = self.entities.count
			self.entities.append(entity)
			return ArchRowId(id)
		}
	}

	@inlinable
	mutating func setComponentThrowable<T: Component>(row: ArchRowId, component: T) throws {
		guard let ptr = self.components[T.id]?.bindMemory(to: ComponentColumn<T>.self, capacity: 1) else {
			throw KiwiError(.EntityDoesNotHaveComponent, message: "Component \(component) (\(T.id)) cannot be assigned to the entity because it does not have the specified component")
		}

		if ptr.pointee.components.count <= row {
			ptr.pointee.components.append(component)
		} else {
			ptr.pointee.components[Int(row)] = component
		}
	}

	@inlinable
	mutating func setComponent<T: Component>(row: ArchRowId, component: T) {
		guard let ptr = self.components[T.id]?.bindMemory(to: ComponentColumn<T>.self, capacity: 1) else {
			fatalError("Component \(component) (\(T.id)) cannot be assigned to the entity because it does not have the specified component")
		}

		if ptr.pointee.components.count <= row {
			ptr.pointee.components.append(component)
		} else {
			ptr.pointee.components[Int(row)] = component
		}
	}

	/// - Attention: fatal error if the entity does not have the component or the entity does not exist
	@inlinable
	func getComponent<T: Component>(row: ArchRowId) throws -> T {
		guard let ptr = self.components[T.id]?.bindMemory(to: ComponentColumn<T>.self, capacity: 1) else {
			throw KiwiError(.EntityDoesNotHaveComponent)
		}

		return ptr.pointee.components[Int(row)]
	}

	@inlinable
	mutating func getComponentMut<T: Component>(row: ArchRowId, _ body: (UnsafeMutablePointer<T>) throws -> ()) throws {
		guard let compColPtr = self.components[T.id]?.bindMemory(to: ComponentColumn<T>.self, capacity: 1) else {
			throw KiwiError(.EntityDoesNotHaveComponent, message: "Component (\(T.id)) cannot be assigned to the entity because it does not have the specified component")
		}

		try compColPtr.pointee.components.withUnsafeMutableBufferPointer { componentsPtr in
			// row should always be valid
			try body(&componentsPtr[Int(row)])
		}
	}

	@inlinable
	func hasComponent(component id: ComponentId) -> Bool {
		self.components[id] != nil
	}

	@inlinable
	mutating func removeEntity(row: ArchRowId) {
		self.availableEntityRows.append(row)
		self.entities[Int(row)] = nil
	}

	func components(_ componentsInfo: [(ComponentId, Int)]) -> ComponentsIterator {
		let componentsPtrs = componentsInfo.map { componentInfo in
			(
				componentInfo.1,
				UnsafeRawPointer(self.components[componentInfo.0]!).assumingMemoryBound(to: ComponentColumn<UInt8>.self)
			)
		}
		return ComponentsIterator(entities: self.entities.lazy, components: componentsPtrs)
	}

	mutating func componentsMut(_ componentsInfo: [(ComponentId, Int)]) -> MutableComponentsIterator {
		let componentsPtrs = componentsInfo.map { componentInfo in
			(
				componentInfo.1,
				self.components[componentInfo.0]!.assumingMemoryBound(to: ComponentColumn<UInt8>.self)
			)
		}
		return MutableComponentsIterator(entities: self.entities.lazy, components: componentsPtrs)
	}
}
