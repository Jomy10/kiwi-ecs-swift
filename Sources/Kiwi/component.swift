public typealias ComponentId = Int

/// All components should implement the Component protocol
///
/// ```swift
/// struct Position: Component {
///		var x: Int
///		var y: Int
/// }
/// ```
public protocol Component {
	/// A unique id for this component
	///
	/// Can be overwritten for performance reasons as the default implementation will
	/// be slower than implementing it
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
