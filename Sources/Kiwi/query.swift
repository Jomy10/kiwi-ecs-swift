extension World {
	/// Query all entity ids
	public func queryIds() -> some Sequence<(EntityId)> {
		return self.entityStore.entityIds()
	}

	/// Query entities immutably based on their components
	public func query(_ components: Component.Type...) -> some Sequence<(EntityId, UnsafeBufferPointer<UnsafeRawPointer>)> {
		self.archStore.compMap.lazy
			.filter { (archComponents, _) in
				components.map { $0.id }.allSatisfy(archComponents.contains)
			}.flatMap { (_, archId: ArchetypeId) in
				self.archStore.get(archetype: archId) { (archPtr: UnsafePointer<Archetype>) in
					return archPtr.pointee.components(components.map { ($0.id, $0.__componentSize) } )
				}
			}
	}

	/// Query entities mutably based on their components
	public func queryMut(_ components: Component.Type...) -> some Sequence<(EntityId, UnsafeMutableBufferPointer<UnsafeMutableRawPointer>)> {
		self.archStore.compMap.lazy
			.filter { (archComponents, _) in
				components.map { $0.id }.allSatisfy(archComponents.contains)
			}.flatMap { (_, archId: ArchetypeId) in
				self.archStore.get(archetype: archId) { (archPtr: UnsafePointer<Archetype>) in
					return UnsafeMutablePointer(mutating: archPtr).pointee.componentsMut(components.map { ($0.id, $0.__componentSize)})
				}
			}
	}
}

extension Sequence<(EntityId)> {
	// Providing consisteny
	@inlinable
	public func get() -> Self { self }
}
