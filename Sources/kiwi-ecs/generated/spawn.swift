extension World {
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component   >
	( _ component1: Component1   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component   >
	( _ component1: Component1  , _ component2: Component2   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component  , Component20: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19  , _ component20: Component20   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId Component20.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component20)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component  , Component20: Component  , Component21: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19  , _ component20: Component20  , _ component21: Component21   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId Component20.kId Component21.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component20)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component21)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component  , Component20: Component  , Component21: Component  , Component22: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19  , _ component20: Component20  , _ component21: Component21  , _ component22: Component22   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId Component20.kId Component21.kId Component22.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component20)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component21)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component22)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component  , Component20: Component  , Component21: Component  , Component22: Component  , Component23: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19  , _ component20: Component20  , _ component21: Component21  , _ component22: Component22  , _ component23: Component23   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId Component20.kId Component21.kId Component22.kId Component23.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component20)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component21)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component22)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component23)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component  , Component20: Component  , Component21: Component  , Component22: Component  , Component23: Component  , Component24: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19  , _ component20: Component20  , _ component21: Component21  , _ component22: Component22  , _ component23: Component23  , _ component24: Component24   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId Component20.kId Component21.kId Component22.kId Component23.kId Component24.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component20)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component21)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component22)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component23)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component24)
			 
		}

		return entId
	}
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component  , Component2: Component  , Component3: Component  , Component4: Component  , Component5: Component  , Component6: Component  , Component7: Component  , Component8: Component  , Component9: Component  , Component10: Component  , Component11: Component  , Component12: Component  , Component13: Component  , Component14: Component  , Component15: Component  , Component16: Component  , Component17: Component  , Component18: Component  , Component19: Component  , Component20: Component  , Component21: Component  , Component22: Component  , Component23: Component  , Component24: Component  , Component25: Component   >
	( _ component1: Component1  , _ component2: Component2  , _ component3: Component3  , _ component4: Component4  , _ component5: Component5  , _ component6: Component6  , _ component7: Component7  , _ component8: Component8  , _ component9: Component9  , _ component10: Component10  , _ component11: Component11  , _ component12: Component12  , _ component13: Component13  , _ component14: Component14  , _ component15: Component15  , _ component16: Component16  , _ component17: Component17  , _ component18: Component18  , _ component19: Component19  , _ component20: Component20  , _ component21: Component21  , _ component22: Component22  , _ component23: Component23  , _ component24: Component24  , _ component25: Component25   ) throws -> EntityId {
		let ids: [ComponentId] = [ Component1.kId Component2.kId Component3.kId Component4.kId Component5.kId Component6.kId Component7.kId Component8.kId Component9.kId Component10.kId Component11.kId Component12.kId Component13.kId Component14.kId Component15.kId Component16.kId Component17.kId Component18.kId Component19.kId Component20.kId Component21.kId Component22.kId Component23.kId Component24.kId Component25.kId ].sorted()

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId = self.entityStore.newId()
		try self.archStore.getMut(archetype: archId) { archPtr in
			let archRow = archPtr.pointee.newArchRowId(entity: entId)

			// register entity
			self.entityStore.spawn(entity: entId, arch: archId, archRow: archRow)

			 
			try archPtr.pointee.setComponent(row: archRow, component: component1)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component2)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component3)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component4)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component5)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component6)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component7)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component8)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component9)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component10)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component11)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component12)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component13)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component14)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component15)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component16)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component17)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component18)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component19)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component20)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component21)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component22)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component23)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component24)
			 
			try archPtr.pointee.setComponent(row: archRow, component: component25)
			 
		}

		return entId
	}
	 
}
