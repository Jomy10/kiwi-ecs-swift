@usableFromInline
typealias ArchRowId = UInt32

//===================
// Component Storage
//===================

/// Contains the component values for all entities in an archetype of one
/// type of component
fileprivate struct ComponentColumn {
	var components: [UInt8]
	let componentSize: Int

	init(size: Int) {
		self.components = []
		self.componentSize = size
	}
}

//===========
// Archetype
//===========

struct Archetype {
	private var components: [ComponentId: ComponentColumn]
	private var availableEntityRows: [ArchRowId]
	private var entities: [EntityId]
}

internal extension Archetype {
	/// sizes: sizes in bytes of the components
	init(components: [ComponentId], sizes: [Int]) {
		self.components = Dictionary<ComponentId, ComponentColumn>(minimumCapacity: components.count)
		self.availableEntityRows = []
		self.entities = []
		components.enumerated().forEach { (i, compId) in
			self.components[compId] = ComponentColumn(size: sizes[i])
		}
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

	// /// - throws: if this archetype does not contain the specified component
	// @inlinable
	// @available(*, deprecated)
	// mutating func checkedSetComponent<T: Component>(row: ArchRowId, component: inout T) throws {
	// 	guard self.components[T.__id] != nil else {
	// 		throw KiwiError(.EntityCantHaveComponent, message: "Entity of type \(row) can't have component \(component)")
	// 	}

	// 	self.setComponent(row: row, component: &component)
	// }

	@inlinable
	mutating func setComponent(row: ArchRowId, id compId: Int, component: UnsafeRawPointer) {
		withUnsafeMutablePointer(to: &self.components[compId]!) { columnPtr in
			let componentSize = columnPtr.pointee.componentSize
			let i = Int(row) * componentSize

			let componentBytes = UnsafeRawBufferPointer(
				start: component,
				count: componentSize
			)
			
			if columnPtr.pointee.components.count <= i + componentSize {
				columnPtr.pointee.components.reserveCapacity(i + componentSize)
				columnPtr.pointee.components.append(contentsOf: componentBytes)
			} else {
				componentBytes.enumerated().forEach { (idx, byte) in
					columnPtr.pointee.components[i + idx] = byte
				}
			}
		}
	}

	/// - Attention: fatal error if the entity does not have the component or the entity does not exist
	@inlinable
	func getComponent<T: Component>(row: ArchRowId) -> T {
		return withUnsafePointer(to: self.components[T.__id]!) { (columnPtr: UnsafePointer<ComponentColumn>) in
			let start = columnPtr.pointee.componentSize * Int(row)
			return columnPtr.pointee.components[start..<start + columnPtr.pointee.componentSize].withUnsafeBytes { ptr -> T in
				let compPtr = ptr.bindMemory(to: T.self)
				return compPtr[0]
			}
		}
	}

	@inlinable
	func getComponent<T: Component>(row: ArchRowId, _ body: (UnsafePointer<T>) -> ()) {
		withUnsafePointer(to: self.components[T.__id]!) { (columnPtr: UnsafePointer<ComponentColumn>) in
			let start = columnPtr.pointee.componentSize * Int(row)
			columnPtr.pointee.components[start..<start + columnPtr.pointee.componentSize].withUnsafeBytes { ptr in
				let compPtr = ptr.bindMemory(to: T.self)
				body(compPtr.baseAddress!)
			}
		}
	}

	@inlinable
	mutating func getComponentMut<T: Component>(row: ArchRowId, _ body: (UnsafeMutablePointer<T>) -> ()) {
		withUnsafeMutablePointer(to: &self.components[T.__id]!) { (columnPtr: UnsafeMutablePointer<ComponentColumn>) in
			let start = columnPtr.pointee.componentSize * Int(row)
			columnPtr.pointee.components[start..<start + columnPtr.pointee.componentSize].withUnsafeMutableBytes { ptr in
				let compPtr = ptr.bindMemory(to: T.self)
				body(compPtr.baseAddress!)
			}
		}
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
