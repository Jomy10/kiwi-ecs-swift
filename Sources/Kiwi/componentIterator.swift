struct ComponentsIterator: Sequence, IteratorProtocol {
	private var entities: LazySequence<[EntityId?]>.Iterator
	/// (memorySize, ptrs to arrays of the different components)
	private var components: [(Int, UnsafePointer<ComponentColumn<UInt8>>)]
	private var i = 0
	private var buffer: UnsafeSequenceBuffer<UnsafeRawPointer>

	init(entities: LazySequence<[EntityId?]>, components: [(Int, UnsafePointer<ComponentColumn<UInt8>>)]) {
		self.entities = entities.makeIterator()
		self.components = components
		self.buffer = UnsafeSequenceBuffer(bufSize: self.components.count)
	}

    /// Returns  a tuple of:
    /// - the entity id
    /// - an array (unknow-sized tuple) of type UnsafeRawPointer containing pointers to the requested components of this entity
	@inlinable
	mutating func next() -> (EntityId, ContiguousArray<UnsafeRawPointer>)? {
		if let id = entities.next() {
			if let id = id {
				defer { self.i += 1 }
				// Map to an array of bytes, which can be converted into (Component1, Component2, ...)
				bufferedMap(buffer: &self.buffer, self.components) { (size: Int, compColPtr: UnsafePointer<ComponentColumn<UInt8>>) -> UnsafeRawPointer in
					return compColPtr.pointee.components.withUnsafeBytes { (bufCompPtr: UnsafeRawBufferPointer) in
						return bufCompPtr.baseAddress.unsafelyUnwrapped + (i * size)
					}
				}
				return (id, self.buffer.unsafeGetFull())
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

struct MutableComponentsIterator: Sequence, IteratorProtocol {
	private var entities: LazySequence<[EntityId?]>.Iterator
	private var components: [(Int, UnsafeMutablePointer<ComponentColumn<UInt8>>)]
	private var i = 0
	private var buffer: UnsafeSequenceBuffer<UnsafeMutableRawPointer>

	init(entities: LazySequence<[EntityId?]>, components: [(Int, UnsafeMutablePointer<ComponentColumn<UInt8>>)]) {
		self.entities = entities.makeIterator()
		self.components = components
		self.buffer = UnsafeSequenceBuffer(bufSize: self.components.count)
	}

	@inlinable
	mutating func next() -> (EntityId, ContiguousArray<UnsafeMutableRawPointer>)? {
		if let id = entities.next() {
			if let id = id {
				defer { self.i += 1 }

				bufferedMap(buffer: &self.buffer, self.components) { (size: Int, compColPtr: UnsafeMutablePointer<ComponentColumn<UInt8>>) -> UnsafeMutableRawPointer in
					return compColPtr.pointee.components.withUnsafeMutableBytes { (bufCompPtr: UnsafeMutableRawBufferPointer) in
						return bufCompPtr.baseAddress.unsafelyUnwrapped + (i * size)
					}
				}
				return (id, self.buffer.unsafeGetFull())
				// return (id, self.components.map { (size: Int, compColPtr: UnsafeMutablePointer<ComponentColumn<UInt8>>) -> UnsafeMutableRawPointer in
				// 	return compColPtr.pointee.components.withUnsafeMutableBytes { (bufPtr: UnsafeMutableRawBufferPointer) in
				// 		return bufPtr.baseAddress.unsafelyUnwrapped + (i * size)
				// 	}
				// })
			} else {
				self.i += 1
				return self.next()
			}
		} else {
			return nil
		}
	}
}
