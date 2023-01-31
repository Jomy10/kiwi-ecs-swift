@usableFromInline
struct Bitmap {
	@usableFromInline
	var bits: [Int]
	@usableFromInline
	let size: Int

	@inlinable
	init() {
		self.bits = []
		self.size = MemoryLayout<Int>.size
	}
}

extension Bitmap {
	@inlinable
	func contains(_ i: Int) -> Bool {
		let idx = i / self.size
		let idx2 = i % self.size
		if self.bits.count <= idx {
			return false
		} else {
			return self.bits[idx] & (1 << idx2) == (1 << idx2)
		}
	}

	@inlinable
	mutating func set(_ i: Int) {
		let idx = i / self.size
		let idx2 = i % self.size
		if self.bits.count <= idx {
			self.bits.reserveCapacity(idx)
			(self.bits.count...idx).forEach { _ in
				self.bits.append(0)
			}
		}

		self.bits[idx] |= (1 << idx2)
	}

	@inlinable
	mutating func remove(_ i: Int) {
		let idx = i / self.size
		let idx2 = i % self.size
		if self.bits.count <= idx {
			return
		}

		self.bits[idx] &= (0 << idx2)
	}
}
