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

	/// components should be a sorted array
	@inlinable
	@available(*, deprecated)
	func getArchetypeIdMaybe(components: [ComponentId]) -> ArchetypeId? {
		self.compMap[components]
	}

	/// Creates a new archetype id. Don't call this without checking if the id exists;
	/// call `getArchetypeId` first.
	/// 
	/// - `components`: sorted
	/// - returns: the new id of the archetype
	// @inlinable
	// mutating func newArchetype(components: [ComponentId], sizes: [ComponentId: Int]) -> ArchetypeId {
	// 	let id = self.archetypes.count
	// 	self.compMap[components] = ArchetypeId(id)
	// 	self.archetypes.append(Archetype(components: components))
	// 	return ArchetypeId(id)
	// }

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

	func dealloc() {
		todo()
	}
}
