public typealias EntityId = UInt32

//========
// Entity
//========

struct Entity {
	let archId: ArchetypeId
	let archRow: ArchRowId

	@usableFromInline
	init(arch archId: ArchetypeId, row: ArchRowId) {
		self.archId = archId
		self.archRow = row
	}
}

//=============
// EntityStore
//=============

struct EntityStore {
	@usableFromInline
	var entities: [Entity]
	@usableFromInline
	var flags: [Bitmap]
	@usableFromInline
	var nextId: EntityId
	/// Contains all dead entity ids, i.e. available ids for the next entity
	@usableFromInline
	var deadEntities: Set<EntityId>
}

internal extension EntityStore {
	@usableFromInline
	init() {
		self.entities = []
		self.flags = []
		self.nextId = 0
		self.deadEntities = Set()
	}

	/// Gets a new id
	@inlinable
	mutating func newId() -> EntityId {
		if let id: EntityId = self.deadEntities.popFirst() {
			return id
		} else {
			let id: EntityId = self.nextId
			self.nextId += 1
			return id
		}
	}

	/// Spawn a new entity with the given ids
	@inlinable
	mutating func spawn(entity entId: EntityId, arch archId: ArchetypeId, archRow: ArchRowId) {
		if self.entities.count <= entId {
			self.entities.append(Entity(arch: archId, row: archRow))
		} else {
			self.entities[Int(entId)] = Entity(arch: archId, row: archRow)
			self.resetFlags(entity: entId)
		}
	} 

	@inlinable
	func get(entity: EntityId) -> Entity {
		self.entities[Int(entity)]
	}

	/// Safe get
	@inlinable
	func get(entity: EntityId) -> Entity? {
		if self.entities.count <= entity {
			return nil
		} else {
			return self.entities[Int(entity)]
		}
	}
	
	/// Marks an entity as dead
	@inlinable
	mutating func kill(entity: EntityId) {
		self.deadEntities.insert(entity)
	}

	@inlinable
	func entityCount() -> Int {
		// specify Int() to reduce compile time
		return (0..<Int(self.entities.count)).reduce(0) { (count: Int, id: Int) in
			if self.deadEntities.contains(EntityId(id)) {
				return count
			} else {
				return count + 1
			}
		}
	}

	@inlinable
	func hasFlag(entity: EntityId, _ flag: FlagId) -> Bool {
		if self.flags.count <= entity {
			return false
		} else {
			return self.flags[Int(entity)].contains(Int(flag))
		}
	}

	@inlinable
	mutating func setFlag(entity: EntityId, _ flag: FlagId) {
		if self.flags.count <= entity {
			self.flags.reserveCapacity(Int(entity))
			(self.flags.count...Int(entity)).forEach { _ in
				self.flags.append(Bitmap())
			}
		}

		self.flags[Int(entity)].set(Int(flag))
	}

	@inlinable
	mutating func removeFlag(entity: EntityId, _ flag: FlagId) {
		if self.flags.count <= entity {
			return
		}

		self.flags[Int(entity)].remove(Int(flag))
	}

	@inlinable
	mutating func resetFlags(entity: EntityId) {
		self.flags[Int(entity)].clear()
	}

	@inlinable
	func entityIds() -> some Sequence<EntityId> {
		(0..<self.nextId)
			.filter { id in
				!self.deadEntities.contains(id)
			}
	}
}
