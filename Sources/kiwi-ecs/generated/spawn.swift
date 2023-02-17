extension World {
	 
	/// Spawn a new entity with the specified components
	@discardableResult
	mutating func spawn< Component1: Component   >
	( _ component1: Component1   ) throws -> EntityId {
		var ids: [ComponentId] = [ Component1.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id  , Component20.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id  , Component20.id  , Component21.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id  , Component20.id  , Component21.id  , Component22.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id  , Component20.id  , Component21.id  , Component22.id  , Component23.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id  , Component20.id  , Component21.id  , Component22.id  , Component23.id  , Component24.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
		var ids: [ComponentId] = [ Component1.id  , Component2.id  , Component3.id  , Component4.id  , Component5.id  , Component6.id  , Component7.id  , Component8.id  , Component9.id  , Component10.id  , Component11.id  , Component12.id  , Component13.id  , Component14.id  , Component15.id  , Component16.id  , Component17.id  , Component18.id  , Component19.id  , Component20.id  , Component21.id  , Component22.id  , Component23.id  , Component24.id  , Component25.id   ]
		ids = ids.sorted() // on separate lines for compile-time performance

		let archId: ArchetypeId = self.archStore.getArchetypeId(components: ids)
		let entId: EntityId = self.entityStore.newId()
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
