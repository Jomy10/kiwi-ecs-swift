@usableFromInline
typealias ArchRowId = UInt32

//===================
// Component Storage
//===================

/// Contains the component values for all entities in an archetype of one
/// type of component
fileprivate struct ComponentColumn<T> {
	var components: [T]
	// let componentSize: Int

	// init(size: Int) {
	init() {
		self.components = []
		// self.componentSize = size
	}
}

//===========
// Archetype
//===========

struct Archetype {
	/// { id => ComponentColumn }
	private var components: [ComponentId: UnsafeMutableRawPointer]
	private var availableEntityRows: [ArchRowId]
	private var entities: [EntityId]
}

internal extension Archetype {
	/// - components: the ids of the components
	init(components: [ComponentId]) {//, sizes: [Int]) {
		self.components = Dictionary<ComponentId, UnsafeMutableRawPointer>(minimumCapacity: components.count)
		self.availableEntityRows = []
		self.entities = []

		let compColumns = UnsafeMutablePointer<ComponentColumn<Any>>.allocate(capacity: components.count)
		components.enumerated().forEach { (i, compId) in
			let ptr = compColumns.advanced(by: i)
			ptr.pointee = ComponentColumn()
			self.components[compId] = UnsafeMutableRawPointer(ptr)
		}
	}

	func dealloc() {
		todo()
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
	mutating func setComponent<T: Component>(row: ArchRowId, component: T) throws {
		guard let ptr = self.components[T.kId]?.bindMemory(to: ComponentColumn<T>.self, capacity: 1) else {
			throw KiwiError(.EntityDoesNotHaveComponent, message: "Component \(component) (\(T.kId)) cannot be assigned to the entity because it does not have the specified component")
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
		guard let ptr = self.components[T.kId]?.bindMemory(to: ComponentColumn<T>.self, capacity: 1) else {
			throw KiwiError(.EntityDoesNotHaveComponent)
		}

		return ptr.pointee.components[Int(row)]
		
		// return withUnsafePointer(to: self.components[T.__id]!) { (columnPtr: UnsafePointer<ComponentColumn>) in
		// 	let start = columnPtr.pointee.componentSize * Int(row)
		// 	return columnPtr.pointee.components[start..<start + columnPtr.pointee.componentSize].withUnsafeBytes { ptr -> T in
		// 		let compPtr = ptr.bindMemory(to: T.self)
		// 		return compPtr[0]
		// 	}
		// }
	}

	@inlinable
	func getComponent<T: Component>(row: ArchRowId, _ body: (UnsafePointer<T>) -> ()) {
	todo()
		// withUnsafePointer(to: self.components[T.__id]!) { (columnPtr: UnsafePointer<ComponentColumn>) in
		// 	let start = columnPtr.pointee.componentSize * Int(row)
		// 	columnPtr.pointee.components[start..<start + columnPtr.pointee.componentSize].withUnsafeBytes { ptr in
		// 		let compPtr = ptr.bindMemory(to: T.self)
		// 		body(compPtr.baseAddress!)
		// 	}
		// }
	}

	@inlinable
	mutating func getComponentMut<T: Component>(row: ArchRowId, _ body: (UnsafeMutablePointer<T>) -> ()) {
		todo()
		// withUnsafeMutablePointer(to: &self.components[T.__id]!) { (columnPtr: UnsafeMutablePointer<ComponentColumn>) in
		// 	let start = columnPtr.pointee.componentSize * Int(row)
		// 	columnPtr.pointee.components[start..<start + columnPtr.pointee.componentSize].withUnsafeMutableBytes { ptr in
		// 		let compPtr = ptr.bindMemory(to: T.self)
		// 		body(compPtr.baseAddress!)
		// 	}
		// }
	}

	@inlinable
	func hasComponent(component id: ComponentId) -> Bool {
		self.components[id] != nil
	}

	@inlinable
	func removeEntity(row: ArchRowId) {
		todo("remove entity")
	}
}
