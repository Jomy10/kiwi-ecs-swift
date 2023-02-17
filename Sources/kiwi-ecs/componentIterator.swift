#if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif
					
struct ComponentsIterator: Sequence, IteratorProtocol {
	private var entities: LazySequence<[EntityId?]>.Iterator
	/// (memorySize, ptrs to arrays of the different components)
	private var components: [(Int, UnsafePointer<ComponentColumn<UInt8>>)]
	private var i = 0

	init(entities: LazySequence<[EntityId?]>, components: [(Int, UnsafePointer<ComponentColumn<UInt8>>)]) {
		self.entities = entities.makeIterator()
		self.components = components
	}

    /// Returns  a tuple of:
    /// - the etity id
    /// - an array (unknow-sized tuple) of type UnsafeRawPointer containing pointers to the requested components of this entity
	mutating func next() -> (EntityId, [UnsafeRawPointer])? {
		if let id = entities.next() {
			if let id = id {
				defer { self.i += 1 }
				// Map to an array of bytes, which can be converted into (Component1, Component2, ...)
                return (id, self.components.map { (size: Int, compColPtr: UnsafePointer<ComponentColumn<UInt8>>) -> UnsafeRawPointer in
					return compColPtr.pointee.components.withUnsafeBytes { (bufPtr: UnsafeRawBufferPointer) in
                        return bufPtr.baseAddress.unsafelyUnwrapped + (i * size)
					}
                })
			} else {
				// when id is nil, then the entity is dead, so go to next index
				// (~ filter)
				self.i += 1
				return self.next()
			}
		} else {
			// no more entities
			return nil
		}
	}
}
