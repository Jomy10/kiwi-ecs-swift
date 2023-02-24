@inline(__always) func unreachable() -> Never {
	#if DEBUG
	print("Unreachable path: ecs bug")
	#endif
	return unsafeBitCast((), to: Never.self)
}
