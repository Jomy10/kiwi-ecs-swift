//============
// Components
//============

public typealias ComponentId = Int

public protocol Component {
	// called kId to avoid name collisions
	/// A unique id for this component
	static var kId: ComponentId { get }
	/// **Don't override, unless you know what you're doing**
	@available(*, deprecated)
	static var __id: ComponentId { get }
}

extension Component {
	@inlinable
	static var kId: ComponentId {
		var hasher = Hasher()
		hasher.combine(String(describing: Self.self))
		return hasher.finalize()
	}

	@inlinable
	@available(*, deprecated)
	static var __id: ComponentId {
		return self.kId
	}
}

//=======
// Flags
//=======

public typealias FlagId = UInt32

public protocol Flags: RawRepresentable where RawValue == FlagId {}
