// TODO: RcWorld -> class wrapper for World (generate with ruby script?)

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
	public mutating func spawn() -> EntityId {
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
	/// - Attention: fatal error if the entity does not exist
	/// - Throws: if the entity does not have the component
	public mutating func getComponent<T: Component>(of entId: EntityId, _ body: (UnsafeMutablePointer<T>) throws -> ()) throws {
		let entity: Entity = self.entityStore.get(entity: entId)
		try self.archStore.getMut(archetype: entity.archId) { archPtr in
			try archPtr.pointee.getComponentMut(row: entity.archRow, body)
		}
	}

	/// Get a component mutably
	///
	/// - Attention: fatal error if the entity does not exist or the entity does not have the component
	@inlinable
	public mutating func getComponent<T: Component>(of entId: EntityId, _ body: (inout T) throws -> ()) throws {
		try self.getComponent(of: entId) { (ptr: UnsafeMutablePointer<T>) in
			try body(&ptr.pointee)
		}
	}

	/// Kills an entity
	///
	/// This means the entity id will be reused for other entities.
	public mutating func kill(entity id: EntityId) {
		let entity: Entity = self.entityStore.get(entity: id)
		self.entityStore.kill(entity: id)
		self.archStore.getMut(archetype: entity.archId) { (archPtr: UnsafeMutablePointer<Archetype>) in
			archPtr.pointee.removeEntity(row: entity.archRow)
		}
	}

	/// The amount of entities that are alive
	public var entityCount: Int {
		self.entityStore.entityCount()
	}

	/// Returns whether an entity contains the given component
	public func hasComponent<T: Component>(entity: EntityId, _ component: T.Type) -> Bool {
		let entity: Entity = self.entityStore.get(entity: entity)
		return self.archStore.get(archetype: entity.archId) { (archPtr: UnsafePointer<Archetype>) in
			return archPtr.pointee.hasComponent(component: T.id)
		}
	}

	/// Returns whether the entity has the specified flag
	public func hasFlag<F: RawRepresentable>(entity: EntityId, _ flag: F) -> Bool where F.RawValue == FlagId {
		self.entityStore.hasFlag(entity: entity, flag.rawValue)
	}

	public func hasFlags<F: RawRepresentable>(entity: EntityId, _ flags: F...) -> Bool where F.RawValue == FlagId {
		flags.allSatisfy { self.entityStore.hasFlag(entity: entity, $0.rawValue) }
	}

	/// Sets a flag for an entity
	public mutating func setFlag<F: RawRepresentable>(entity: EntityId, _ flag: F) where F.RawValue == FlagId {
		self.entityStore.setFlag(entity: entity, flag.rawValue)
	}

	/// Remove a flag from an entity
	public mutating func removeFlag<F: RawRepresentable>(entity: EntityId, _ flag: F) where F.RawValue == FlagId {
		self.entityStore.removeFlag(entity: entity, flag.rawValue)
	}
	
	/// Cleans up memory related to the world
	public mutating func destroy() {
		self.archStore.deallocArchetypes()
	}
}
