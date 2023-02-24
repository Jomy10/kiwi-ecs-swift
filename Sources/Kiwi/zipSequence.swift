
struct VariableZip1Sequence<
	FirstElement, FirstElementSequence: Sequence<FirstElement>,
	Element, ElementSequence: Sequence<Element>
>: Sequence, IteratorProtocol {
	private var firstElement: FirstElementSequence.Iterator
	private var elements: [ElementSequence.Iterator]
	// private var i: Int

	var tupleCount: Int {
		elements.count
	}

	init(first: FirstElementSequence, other: [ElementSequence]) {
		self.firstElement = first.makeIterator()
		self.elements = other.map { $0.makeIterator() }
	}

	mutating func next() -> (FirstElement, Element)? {
		if let id = self.firstElement.next() {
			return (id, self.elements[0].next().unsafelyUnwrapped)
		} else {
			return nil
		}
	}
}
