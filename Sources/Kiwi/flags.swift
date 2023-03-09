public typealias FlagId = UInt32

// public protocol Flags: RawRepresentable where RawValue == FlagId {}

// public func hasFlag<F: RawRepresentable>(entity: EntityId, _ flag: F) -> Bool where F.RawValue == FlagId {

// extension Sequence<(EntityId, UnsafeBufferPointer<UnsafeRawPointer>)> {
// 	/// Filter a query based on an entity's flag
// 	@inlinable
// 	public func having<F: RawRepresentable>(_ world: inout World, flags: F...)
// 		-> some Sequence<(EntityId, UnsafeBufferPointer<UnsafeRawPointer>)>
// 			where F.RawValue == FlagId
// 	{
// 		self.filter { (id: EntityId, _) in
// 			flags.allSatisfy { (flag: F) in
// 				world.hasFlag(entity: id, flag)
// 			}
// 		}
// 	}
// }

// extension Sequence<(EntityId, UnsafeMutableBufferPointer<UnsafeRawPointer>)> {
// 	/// Filter a query based on an entity's flag
// 	@inlinable
// 	public func having<F: RawRepresentable>(_ world: inout World, flags: F...)
// 		-> some Sequence<(EntityId, UnsafeMutableBufferPointer<UnsafeRawPointer>)>
// 			where F.RawValue == FlagId
// 	{
// 		self.filter { (id: EntityId, _) in
// 			flags.allSatisfy { (flag: F) in
// 				world.hasFlag(entity: id, flag)
// 			}
// 		}
// 	}
// }

// extension Sequence<(EntityId)> {
// 	/// Filter a query based on an entity's flag
// 	@inlinable
// 	public func having<F: RawRepresentable>(_ world: inout World, flags: F...)
// 		-> some Sequence<(EntityId)>
// 			where F.RawValue == FlagId
// 	{
// 		self.filter { (id: EntityId) in
// 			flags.allSatisfy { (flag: F) in
// 				world.hasFlag(entity: id, flag)
// 			}
// 		}
// 	}
// }
