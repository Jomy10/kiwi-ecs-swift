//============
// Components
//============

public typealias ComponentId = Int

public protocol Component {
	/// A unique id for this component
	static var id: ComponentId { get }

	/// Do not override
	static var __componentSize: Int { get } // <- use to determine size of componenent in archetype query
}

extension Component {
	@inlinable
	public static var id: ComponentId {
		var hasher = Hasher()
		hasher.combine(String(describing: Self.self))
		return hasher.finalize()
	}

	@inlinable
	public static var __componentSize: Int {
		MemoryLayout<Self>.size
	}
}

//=======
// Flags
//=======

public typealias FlagId = UInt32

public protocol Flags: RawRepresentable where RawValue == FlagId {}
