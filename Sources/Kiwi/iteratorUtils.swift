struct UnsafeSequenceBuffer<Element> {
	private var buffer: ContiguousArray<Element>
	private var bufferBaseAddress: UnsafeMutablePointer<Element>
	let bufSize: Int

	/// `bufSize` needs to be specified because the implementation relies on a fully
	/// initialized buffer when using `unsafeGetFull` at the end
	init(bufSize: Int) {
		self.buffer = ContiguousArray()
		self.buffer.reserveCapacity(bufSize)
		self.bufferBaseAddress = self.buffer.withUnsafeMutableBufferPointer { ptr in
			return ptr.baseAddress!
		}
		self.bufSize = bufSize
	}

	@inlinable
	mutating func unsafeSet(index: Int, _ val: Element) {
		(self.bufferBaseAddress + index).initialize(to: val)
		// withUnsafeMutablePointer(to: &self.buffer) { (ptr: UnsafeMutablePointer<Element>) in
		// 	(ptr + index).initialize(to: val)
		// }
	}

	/// Buffer should be fully filled as this function will return the full buffer as an array
	/// regardless of wheter it was fully initialized
	@inlinable
	func unsafeGetFull() -> ContiguousArray<Element> {
		return ContiguousArray(
			UnsafeMutableBufferPointer(start: self.bufferBaseAddress, count: self.bufSize)
		)
	}
}

func bufferedMap<Element, T>(buffer: inout UnsafeSequenceBuffer<T>, _ seq: some Sequence<Element>, _ transform: (Element) throws -> T) rethrows {
	// var iter = seq.makeIterator()
	// for i in 0..<buffer.bufSize {
	// 	buffer.unsafeSet(index: i, try transform(iterator.next()!))
	// }
	for (i, elem) in seq.enumerated() {
		buffer.unsafeSet(index: i, try transform(elem))
	}
}
