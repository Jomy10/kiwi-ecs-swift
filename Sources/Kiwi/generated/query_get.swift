extension Sequence<(EntityId, UnsafeBufferPointer<UnsafeRawPointer>)> {
	@inlinable
	public func get<A: Component>() -> some Sequence<A> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> A in
			comps[0].assumingMemoryBound(to: A.self).pointee
		}
	}

	@inlinable
	public func getWithIds<A: Component>() -> some Sequence<(EntityId, A)> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId, A) in
			(id, comps[0].assumingMemoryBound(to: A.self).pointee)
		}
	}

	 
	@inlinable
	public func get< C1: Component  , C2: Component   >() -> some Sequence<( C1  , C2   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component   >() -> some Sequence<( C1  , C2  , C3   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component   >() -> some Sequence<( C1  , C2  , C3  , C4   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee     )
		}
	}
	 
	@inlinable
	public func get< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component  , C25: Component   >() -> some Sequence<( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   )> {
		return self.map { (_: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> ( C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   ) in
			(  comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee  ,    comps[ 24 ].assumingMemoryBound(to: C25.self).pointee     )
		}
	}
	 

	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component   >() -> some Sequence<(EntityId,  C1  , C2   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee     )
		}
	}
	 
	@inlinable
	public func getWithIds< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component  , C25: Component   >() -> some Sequence<(EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   )> {
		return self.map { (id: EntityId, comps: UnsafeBufferPointer<UnsafeRawPointer>) -> (EntityId,  C1  , C2  , C3  , C4  , C5  , C6  , C7  , C8  , C9  , C10  , C11  , C12  , C13  , C14  , C15  , C16  , C17  , C18  , C19  , C20  , C21  , C22  , C23  , C24  , C25   ) in
			(id,   comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  ,    comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  ,    comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  ,    comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  ,    comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  ,    comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  ,    comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  ,    comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  ,    comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  ,    comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  ,    comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  ,    comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  ,    comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  ,    comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  ,    comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  ,    comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  ,    comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  ,    comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  ,    comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  ,    comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  ,    comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  ,    comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  ,    comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  ,    comps[ 23 ].assumingMemoryBound(to: C24.self).pointee  ,    comps[ 24 ].assumingMemoryBound(to: C25.self).pointee     )
		}
	}
	 
}

extension Sequence<(EntityId, UnsafeMutableBufferPointer<UnsafeMutableRawPointer>)> {
	@inlinable
	public func mutate<A: Component>(_ edit: (inout A) -> ()) {
		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(&comps[0].assumingMemoryBound(to: A.self).pointee)
		}
	}

	@inlinable
	public func mutateWithIds<A: Component>(_ edit: (EntityId, inout A) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id, &comps[0].assumingMemoryBound(to: A.self).pointee)
		}
	}

	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component   >
		(_ edit: ( inout C1  , inout C2   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22  , inout C23   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  , &comps[ 22 ].assumingMemoryBound(to: C23.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22  , inout C23   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  , &comps[ 22 ].assumingMemoryBound(to: C23.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22  , inout C23  , inout C24   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  , &comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  , &comps[ 23 ].assumingMemoryBound(to: C24.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22  , inout C23  , inout C24   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  , &comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  , &comps[ 23 ].assumingMemoryBound(to: C24.self).pointee   )
		}
	}
	 
	@inlinable
	public func mutate
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component  , C25: Component   >
		(_ edit: ( inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22  , inout C23  , inout C24  , inout C25   ) -> ()) {

		self.forEach { (_: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit( &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  , &comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  , &comps[ 23 ].assumingMemoryBound(to: C24.self).pointee  , &comps[ 24 ].assumingMemoryBound(to: C25.self).pointee   )
		}
	}

	@inlinable
	public func mutateWithIds
		< C1: Component  , C2: Component  , C3: Component  , C4: Component  , C5: Component  , C6: Component  , C7: Component  , C8: Component  , C9: Component  , C10: Component  , C11: Component  , C12: Component  , C13: Component  , C14: Component  , C15: Component  , C16: Component  , C17: Component  , C18: Component  , C19: Component  , C20: Component  , C21: Component  , C22: Component  , C23: Component  , C24: Component  , C25: Component   >
		(_ edit: (EntityId,  inout C1  , inout C2  , inout C3  , inout C4  , inout C5  , inout C6  , inout C7  , inout C8  , inout C9  , inout C10  , inout C11  , inout C12  , inout C13  , inout C14  , inout C15  , inout C16  , inout C17  , inout C18  , inout C19  , inout C20  , inout C21  , inout C22  , inout C23  , inout C24  , inout C25   ) -> ()) {
		self.forEach { (id: EntityId, comps: UnsafeMutableBufferPointer<UnsafeMutableRawPointer>) -> () in
			edit(id,  &comps[ 0 ].assumingMemoryBound(to: C1.self).pointee  , &comps[ 1 ].assumingMemoryBound(to: C2.self).pointee  , &comps[ 2 ].assumingMemoryBound(to: C3.self).pointee  , &comps[ 3 ].assumingMemoryBound(to: C4.self).pointee  , &comps[ 4 ].assumingMemoryBound(to: C5.self).pointee  , &comps[ 5 ].assumingMemoryBound(to: C6.self).pointee  , &comps[ 6 ].assumingMemoryBound(to: C7.self).pointee  , &comps[ 7 ].assumingMemoryBound(to: C8.self).pointee  , &comps[ 8 ].assumingMemoryBound(to: C9.self).pointee  , &comps[ 9 ].assumingMemoryBound(to: C10.self).pointee  , &comps[ 10 ].assumingMemoryBound(to: C11.self).pointee  , &comps[ 11 ].assumingMemoryBound(to: C12.self).pointee  , &comps[ 12 ].assumingMemoryBound(to: C13.self).pointee  , &comps[ 13 ].assumingMemoryBound(to: C14.self).pointee  , &comps[ 14 ].assumingMemoryBound(to: C15.self).pointee  , &comps[ 15 ].assumingMemoryBound(to: C16.self).pointee  , &comps[ 16 ].assumingMemoryBound(to: C17.self).pointee  , &comps[ 17 ].assumingMemoryBound(to: C18.self).pointee  , &comps[ 18 ].assumingMemoryBound(to: C19.self).pointee  , &comps[ 19 ].assumingMemoryBound(to: C20.self).pointee  , &comps[ 20 ].assumingMemoryBound(to: C21.self).pointee  , &comps[ 21 ].assumingMemoryBound(to: C22.self).pointee  , &comps[ 22 ].assumingMemoryBound(to: C23.self).pointee  , &comps[ 23 ].assumingMemoryBound(to: C24.self).pointee  , &comps[ 24 ].assumingMemoryBound(to: C25.self).pointee   )
		}
	}
	 
}
