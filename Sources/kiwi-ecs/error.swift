public struct KiwiError: Error {
	public let message: String?
	public let kind: KiwiErrorType

	internal init(_ kind: KiwiErrorType, message: String? = nil) {
		self.kind = kind
		self.message = message
	}
}

public enum KiwiErrorType {
	case EntityCantHaveComponent
}
