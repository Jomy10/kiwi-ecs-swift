func todo(_ s: String = "") { fatalError("TODO \(s)") }
func todo<T>(_ s: String = "") -> T { fatalError("TODO \(s)") }

// TODO: pass struct Unmanaged -> deallocate when removed

public struct World {
	private var entityStore: EntityStore
	private var archStore: ArchStore

	public init() {
		self.entityStore = EntityStore()
		self.archStore = ArchStore()
	}
	
	// see generated macros
	/// Spawn a new entity with the specified components
	@discardableResult
	public mutating func spawn() throws -> EntityId {
		let archId: ArchetypeId = self.archStore.getArchetypeId(components: [])
		let entId = self.entityStore.newId()
		self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)
		}

		return entId
	}

	// @discardableResult
	// public mutating func spawn<A: Component>(_ a: A) throws -> EntityId {
	// 	let ids: [ComponentId] = [A.kId].sorted()

	// 	let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
	// 	let entId = self.entityStore.newId()
	// 	try self.archStore.getMut(archetype: archId) { archPtr in
	// 		let archRow = archPtr.pointee.newArchRowId(entity: entId)

	// 		// register entity
	// 		self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

	// 		try archPtr.pointee.setComponent(row: archRow, component: a)
	// 	}

	// 	return entId
	// }

	// @discardableResult
	// public mutating func spawn<A: Component, B: Component>(_ a: A, _ b: B) throws -> EntityId {
	// 	let ids: [ComponentId] = [A.kId, B.kId].sorted()

	// 	let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
	// 	let entId = self.entityStore.newId()
	// 	try self.archStore.getMut(archetype: archId) { archPtr in
	// 		let archRow = archPtr.pointee.newArchRowId(entity: entId)

	// 		// register entity
	// 		self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

	// 		try archPtr.pointee.setComponent(row: archRow, component: a)
	// 		try archPtr.pointee.setComponent(row: archRow, component: b)
	// 	}

	// 	return entId
	// }

	// @discardableResult
	// public mutating func spawn(_ components: Component...) -> EntityId {
		// let ids = components.map { type(of: $0).__id }
		// let sortedIds = ids.sorted()

		// let archId: ArchetypeId
		// if let _archId = self.archStore.getArchetypeId(components: sortedIds) {
		// 	archId = _archId
		// } else {
		// 	archId = self.archStore.newArchetype(
		// 		components: sortedIds,
		// 		sizes: components.reduce(into: [ComponentId:Int]()) {
		// 			$0[type(of: $1).__id] = type(of: $1).__size
		// 		}
		// 	)
		// }

		// let entId = self.entityStore.newId()
		// self.archStore.getMut(archetype: archId) { archPtr in
		// 	let archRow = archPtr.pointee.newArchRowId(entity: entId)

		// 	self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)
		// 	for component in components {
		// 		var comp = component
		// 		let compId = type(of: component).__id
		// 		archPtr.pointee.setComponent(row: archRow, component: comp)
		// 		// withUnsafePointer(to: &comp) { ptr in
		// 		// 	archPtr.pointee.setComponent(row: archRow, id: compId, component: ptr)
		// 		// }
		// 	}
		// }

		// return entId
	// }

	/// Get a pointer to a component
	///
	/// - Attention: fatal error if the entity does not exist, or the entity does not have the component
	// public func getComponent<T: Component>(of entId: EntityId, _ body: (UnsafePointer<T>) -> ()) {
	// 	let entity: Entity = self.entityStore.get(entity: entId)
	// 	self.archStore.get(archetype: entity.archId) { archPtr in
	// 		archPtr.pointee.getComponent(row: entity.archRow, body)
	// 	}
	// }
	
	//// Get a component of an entity
	///
	/// - Attention: fatal error if the entity does not exist or the entity does not have the component
	public func getComponent<T: Component>(of entId: EntityId) throws -> T {
		let entity: Entity = self.entityStore.get(entity: entId)
		return try self.archStore.get(archetype: entity.archId) { archPtr in
			try archPtr.pointee.getComponent(row: entity.archRow)
		}
		// var comp: T?
		// self.archStore.get(archetype: entity.archId) { archPtr in
		// 	comp = archPtr.pointee.getComponent(row: entity.archRow)
		// }
		// return comp.unsafelyUnwrapped
	}

	/// Get a mutable pointer to a component
	///
	/// - Attention: fatal error if the entity does not exist or the entity does not have the component
	public mutating func getComponent<T: Component>(of entId: EntityId, _ body: (UnsafeMutablePointer<T>) -> ()) {
		let entity: Entity = self.entityStore.get(entity: entId)
		self.archStore.getMut(archetype: entity.archId) { archPtr in
			archPtr.pointee.getComponentMut(row: entity.archRow, body)
		}
	}

	/// Get a component mutably
	///
	/// - Attention: fatal error if the entity does not exist or the entity does not have the component
	@inlinable
	public mutating func getComponent<T: Component>(of entId: EntityId, _ body: (inout T) -> ()) {
		self.getComponent(of: entId) { (ptr: UnsafeMutablePointer<T>) in
			body(&ptr.pointee)
		}
	}

	/// Set an entity's component
	// public mutating func setComponent<T: Component>(of entId: EntityId, _ comp: inout T) {
	// 	let entity: Entity = self.entityStore.get(entity: entId)
	// 	self.archStore.getMut(archetype: entity.archId) { archPtr in
	// 		archPtr.pointee.setComponent(row: entity.archRow, id: T.__id, component: &comp)
	// 	}
	// }
	
	/// Kills an entity
	///
	/// This means the entity id will be reused for other entities.
	public mutating func kill(entity id: EntityId) { todo() }

	/// The amount of entities that are alive
	public func entityCount() -> Int {
		self.entityStore.entityCount()
	}

	/// Returns whether an entity contains the given component
	public func hasComponent<T: Component>(entity: EntityId, _ component: T.Type) -> Bool {
		let entity: Entity = self.entityStore.get(entity: entity)
		return self.archStore.get(archetype: entity.archId) { (archPtr: UnsafePointer<Archetype>) in
			return archPtr.pointee.hasComponent(component: T.__id)
		}
	}

	/// Returns whether the entity has the specified flag
	public func hasFlag<F: Flag>(entity: EntityId, _ flag: F.Type) -> Bool { todo() }

	/// Sets a flag for an entity
	public mutating func setFlag<F: Flag>(of entity: EntityId, _ flag: F) { todo() }
}

//=========
// Queries
//=========

extension World {
	// TODO
}
