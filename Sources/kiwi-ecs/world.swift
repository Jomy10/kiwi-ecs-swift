func todo(_ s: String = "") { fatalError("TODO \(s)") }
func todo<T>(_ s: String = "") -> T { fatalError("TODO \(s)") }

// TODO: pass struct Unmanaged -> deallocate when removed

public struct World {
	internal var entityStore: EntityStore
	internal var archStore: ArchStore

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

	//// Get a component of an entity
	///
	/// - Attention: fatal error if the entity does not exist or the entity does not have the component
	public func getComponent<T: Component>(of entId: EntityId) throws -> T {
		let entity: Entity = self.entityStore.get(entity: entId)
		return try self.archStore.get(archetype: entity.archId) { archPtr in
			try archPtr.pointee.getComponent(row: entity.archRow)
		}
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
			return archPtr.pointee.hasComponent(component: T.kId)
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
