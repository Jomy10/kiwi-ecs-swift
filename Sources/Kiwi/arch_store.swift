// @usableFromInline
public typealias ArchetypeId = UInt32

struct ArchStore {
	private var archetypes: [Archetype]
	internal var compMap: [[ComponentId]:ArchetypeId]
}

internal extension ArchStore {
	init() {
		self.archetypes = []
		self.compMap = [:]
	}

	mutating func deallocArchetypes() {
		self.archetypes.forEach { $0.dealloc() }
	}

	@inlinable
	func get<Result>(archetype: ArchetypeId, _ body: (UnsafePointer<Archetype>) throws -> Result) rethrows -> Result {
		try withUnsafePointer(to: self.archetypes[Int(archetype)]) { ptr in
			try body(ptr)
		}
	}

	@inlinable
	mutating func getMut<Result>(archetype: ArchetypeId, _ body: (UnsafeMutablePointer<Archetype>) throws -> Result) rethrows -> Result {
		try withUnsafeMutablePointer(to: &self.archetypes[Int(archetype)]) { ptr in
			try body(ptr)
		}
	}

	// `components` should be a sorted array
	@inlinable
	mutating func getArchetypeId(components: [ComponentId]) -> ArchetypeId {
		if let archId = compMap[components] {
			return archId
		} else {
			// Create new archetype
			let id = ArchetypeId(self.archetypes.count)
			self.archetypes.append(Archetype(components: components))
			self.compMap[components] = id
			return id
		}
	}
}
