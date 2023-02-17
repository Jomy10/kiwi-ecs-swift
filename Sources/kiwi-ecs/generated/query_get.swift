extension Sequence<(EntityId, [UnsafeRawPointer])> {
	@inlinable
	public func get<A: Component>() -> some Sequence<A> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> A in
			comps[0].assumingMemoryBound(to: A.self).pointee
		}
	}

	@inlinable
	public func getWithIds<A: Component>() -> some Sequence<(EntityId, A)> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId, A) in
			(id, comps[0].assumingMemoryBound(to: A.self).pointee)
		}
	}

	 
	@inlinable
	public func get< C1: Component  , C2: Component   >() -> some Sequence<( C1  , C2   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component   >() -> some Sequence<( C1  , C2  , C3   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component   >() -> some Sequence<( C1  , C2  , C3  , C4   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component  , C25: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   )> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee  ,    comps[ 24 ].assumingMemoryBound(to: C25.self).pointee     )
		}
	}
	 

	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component   >() -> some Sequence<(EntityId,  C1  , C2   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component  , C25: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   )> {
		return self.map { (id: EntityId, comps: [UnsafeRawPointer]) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee  ,    comps[ 24 ].assumingMemoryBound(to: C25.self).pointee     )
		}
	}
	 
}
