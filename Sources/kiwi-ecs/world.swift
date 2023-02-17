func todo(_ s: String = "") { fatalError("TODO \(s)") }
func todo<T>(_ s: String = "") -> T { fatalError("TODO \(s)") }

#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif
func fprint(_ s: Any...) {
	print(s.map { "\($0)" }.joined(separator: " "))
	fflush(stdout)
}

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
	public mutating func getComponent<T: Component>(of entId: EntityId, _ body: (UnsafeMutablePointer<T>) -> ()) throws {
		let entity: Entity = self.entityStore.get(entity: entId)
		try self.archStore.getMut(archetype: entity.archId) { archPtr in
			try archPtr.pointee.getComponentMut(row: entity.archRow, body)
		}
	}

	/// Get a component mutably
	///
	/// - Attention: fatal error if the entity does not exist or the entity does not have the component
	@inlinable
	public mutating func getComponent<T: Component>(of entId: EntityId, _ body: (inout T) -> ()) throws {
		try self.getComponent(of: entId) { (ptr: UnsafeMutablePointer<T>) in
			body(&ptr.pointee)
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
	public func entityCount() -> Int {
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

	/// Sets a flag for an entity
	public mutating func setFlag<F: RawRepresentable>(of entity: EntityId, _ flag: F) where F.RawValue == FlagId {
		self.entityStore.setFlag(entity: entity, flag.rawValue)
	}

	public mutating func removeFlag<F: RawRepresentable>(of entity: EntityId, _ flag: F) where F.RawValue == FlagId {
		self.entityStore.removeFlag(entity: entity, flag.rawValue)
	}

	public mutating func destroy() {
		todo()
	}
}

//=========
// Queries
//=========

extension World {
	public func query(_ components: Component.Type...) -> some Sequence<(EntityId, [UnsafeRawPointer])> {
		self.archStore.compMap.lazy
			.filter { (archComponents, _) in
				components.map { $0.id }.allSatisfy(archComponents.contains)
			}.flatMap { (_, archId: ArchetypeId) in
				self.archStore.get(archetype: archId) { (archPtr: UnsafePointer<Archetype>) in
					return archPtr.pointee.components(components.map { ($0.id, $0.__componentSize) } )
				}
			}
	}

	// 1. Query all archetypes
	// public func query(_ componentIds: ComponentId...) -> some Sequence<(ArchetypeId, Sequence<EntityId>)> {
	// 	QueryResult(seq: self.archStore.compMap.lazy
	// 		.filter { (archComponents, _) in
	// 			componentIds.allSatisfy(archComponents.contains)
	// 		}.map { (_, archId: ArchetypeId) in
	// 			self.archStore.get(archetype: archId) { (archPtr: UnsafePointer<Archetype>) in
	// 				archPtr.aliveEntities
	// 			}
	// 		})
	// }

	// func query<C1: Component, C2: Component>(_: C1.Type, _: C2.Type) {
	// 	let a = self.archStore.compMap.lazy
	// 		.filter { (archComponents, _) in
	// 			[C1.id, C2.id].allSatisfy(archComponents.contains)
	// 		}.map { (_, archId) in 
	// 			self.archStore.get(archetype: archId) { (archPtr: UnsafePointer<Archetype>) in 
	// 				zip(
	// 					archPtr.pointee.components(C1.self),
	// 					archPtr.pointee.components(C2.self)
	// 				)
	// 			}
	// 		}
	// }

	// public func query<C1: Component, C2: Component, C3: Component>(_: C1.Type, _: C2.Type, _: C3.Type) -> some Sequence<(C1, C2, C3)> {
	// 	self.archStore.compMap.lazy
	// 		.filter { (archComponents, _) in
	// 			[C1.id, C2.id, C3.id]
	// 				.allSatisfy(archComponents.contains)
	// 		}.flatMap { (_, archId) in
	// 			self.archStore.get(archetype: archId) { (archPtr: UnsafePointer<Archetype>) in
	// 				zip(
	// 					zip(
	// 						archPtr.pointee.components(C1.self),
	// 						archPtr.pointee.components(C2.self)
	// 					),
	// 					archPtr.pointee.components(C3.self)
	// 				)
	// 			}
	// 		}.map { (comps12, comps3) in
	// 			(comps12.0, comps12.1, comps3)
	// 			(left, right.0, right.1.0, right.0.1)
	// 		}
	// }
}
