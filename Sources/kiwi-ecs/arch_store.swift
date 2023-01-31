@usableFromInline
typealias ArchetypeId = UInt32

struct ArchStore {
	private var archetypes: [Archetype]
	private var compMap: [[ComponentId]:ArchetypeId]
}

internal extension ArchStore {
	init() {
		self.archetypes = []
		self.compMap = [:]
	}

	@inlinable
	func get<Result>(archetype: ArchetypeId, _ body: (UnsafePointer<Archetype>) -> Result) -> Result {
		return withUnsafePointer(to: self.archetypes[Int(archetype)]) { ptr in
			return body(ptr)
		}
	}

	@inlinable
	mutating func getMut(archetype: ArchetypeId, _ body: (UnsafeMutablePointer<Archetype>) -> Void) {
		withUnsafeMutablePointer(to: &self.archetypes[Int(archetype)]) { ptr in
			body(ptr)
		}
	}

	@inlinable
	func remove(entity: Entity) { todo() }

	/// components should be a sorted array
	@inlinable
	func getArchetypeId(components: [ComponentId]) -> ArchetypeId? {
		self.compMap[components]
	}

	/// Creates a new archetype id. Don't call this without checking if the id exists;
	/// call `getArchetypeId` first.
	/// 
	/// - `components`: sorted
	/// - returns: the new id of the archetype
	@inlinable
	mutating func newArchetype(components: [ComponentId], sizes: [ComponentId: Int]) -> ArchetypeId {
		let id = self.archetypes.count
		self.compMap[components] = ArchetypeId(id)
		self.archetypes.append(Archetype(
			components: components,
			sizes: components.map { sizes[$0].unsafelyUnwrapped }
		))
		return ArchetypeId(id)
	}

	// `components` should be a sorted array
	@inlinable
	mutating func getNewEntityArchetype(components: [ComponentId]) -> ArchetypeId {
		if let archId = compMap[components] {
			return archId
		} else {
			// Create new archetype
			let id = ArchetypeId(self.archetypes.count)
			todo("sizes")
			self.archetypes.append(Archetype(components: components, sizes: []))
			self.compMap[components] = id
			return id
		}
	}
}
