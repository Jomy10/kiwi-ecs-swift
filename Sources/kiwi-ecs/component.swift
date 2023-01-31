//============
// Components
//============

public typealias ComponentId = Int

public protocol Component {
	// called kId to avoid name collisions
	/// A unique id for this component
	static var kId: ComponentId { get }
	/// **Don't override, unless you know what you're doing**
	static var __id: ComponentId { get }
	/// The size in bytes of this component
	static var __size: Int { get }
}

@usableFromInline
var componentIds: [Int:Int] = [:]
@usableFromInline
var componentIdCounter = 0
@usableFromInline
var componentSizes: [Int:Int] = [:]
extension Component {
	@inlinable
	static var kId: ComponentId {
		var hasher = Hasher()
		hasher.combine(String(describing: Self.self))
		return hasher.finalize()
	}

	@inlinable
	static var __id: ComponentId {
		componentIds[self.kId] ?? {
			componentIds[self.kId] = componentIdCounter
			componentIdCounter += 1
			return componentIdCounter - 1
		}()
	}

	@inlinable
	static var __size: Int {
		componentSizes[self.kId] ?? {
			let size = MemoryLayout<Self>.size
			componentSizes[self.kId] = size
			return size
		}()
	}
}

//=======
// Flags
//=======

public typealias FlagId = UInt32

// TODO: rename
public protocol Flag {}
