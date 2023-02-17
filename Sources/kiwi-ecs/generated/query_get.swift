extension Sequence<(EntityId, [UnsafeRawPointer])> {
	@inlinable
	public func get<A: Component>() -> some Sequence<A> {
		return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> A in
			comps[0].assumingMemoryBound(to: A.self).pointee
		}
	}

	// @inlinable
	// public func get<A, Component, B: Component>() -> some Sequence<(A, B)> {
	// 	return self.map { (_: EntityId, comps: [UnsafeRawPointer]) -> (A, B) in
	// 		(
	// 			comps[0].assumingMemoryBound(to: A.self),
	// 			comps[1].assumingMemoryBound(to: B.self)
	// 		)
	// 	}
	// }

	 
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
	 
}
