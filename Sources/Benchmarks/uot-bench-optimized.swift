import Kiwi
import Foundation

@usableFromInline
struct Vec2: Equatable {
	@usableFromInline
	var x: Float64
	@usableFromInline
	var y: Float64
}

@usableFromInline
struct Position: Component, Equatable {
	@usableFromInline
	static let id = UUID().hashValue

	@usableFromInline
	var _val: Vec2

	public init(x: Float64, y: Float64) {
		self._val = Vec2(x: x, y: y)
	}

	public var x: Float64 { 
		get { self._val.x }
		set { self._val.x = newValue }
	}
	public var y: Float64 { 
		get { self._val.y }
		set { self._val.y = newValue }
	}
}

@usableFromInline
struct Velocity: Component {
	@usableFromInline
	static let id = UUID().hashValue
	
	@usableFromInline
	var _val: Vec2

	public init(x: Float64, y: Float64) {
		self._val = Vec2(x: x, y: y)
	}

	public var x: Float64 {
		get { self._val.x }
		set { self._val.x = newValue }
	}
	public var y: Float64 {
		get { self._val.y }
		set { self._val.y = newValue }
	}
}

@usableFromInline
struct Collider: Component {
	@usableFromInline
	static let id = UUID().hashValue
	
	@usableFromInline
	var radius: Float64
}

@usableFromInline
struct Count: Component {
	@usableFromInline
	static let id = UUID().hashValue

	@usableFromInline
	var count: Int32
	init() { self.count = 0 }
}

let iterations = 1000
let maxPosition = 100.0
let maxSpeed = 10.0
let maxCollider = 1.0

func uotOpt() {
	let size = Int(CommandLine.arguments[2]) ?? 1000
	let collisionLimit = Int32(CommandLine.arguments[3]) ?? 0

	try! benchPhysicsOptimized(size, collisionLimit)
}

@inlinable
func moveCircles(_ world: inout World, fixedTime: Float64, maxPosition: Float64) {
	world.queryMut(Position.self, Velocity.self)
		.mutateWithIds { (id: EntityId, pos: inout Position, vel: inout Velocity) in
			pos.x += vel.x * fixedTime
			pos.y += vel.y * fixedTime

			// Bump into bounding rect
			if pos.x <= 0 || pos.x >= maxPosition {
				vel.x = -vel.x
			}
			if pos.y <= 0 || pos.y >= maxPosition {
				vel.y = -vel.y
			}
		}
}

@inlinable
func checkCollisions(_ world: inout World, _ deathCount: inout Int, collisionLimit: Int32) {
	let innerQuery: some Sequence<(EntityId, Position, Collider)> = world.query(Position.self, Collider.self).getWithIds()
	
	world.queryMut(Position.self, Collider.self, Count.self)
		.mutateWithIds { (aId: EntityId, aPos: inout Position, aCol: inout Collider, aCnt: inout Count) in
			for (bId, bPos, bCol) in innerQuery {
				if aId == bId { continue }

				let dx = aPos.x - bPos.x
				let dy = aPos.x - bPos.y
				let distSq = (dx * dx) + (dy * dy)

				let dr = aCol.radius + bCol.radius
				let drSq = dr * dr

				if drSq > distSq {
					aCnt.count += 1
				}

				// Kill and spawn one
				if collisionLimit > 0 && aCnt.count > collisionLimit {
					world.kill(entity: aId)
					deathCount += 1
					break
				}
			}
		}
}

func benchPhysicsOptimized(_ size: Int, _ collisionLimit: Int32) throws {
	var world = World()
	defer { world.destroy() }

	for _ in 0..<size {
		try world.spawn(
			Position(x: Float64.random(in: 0...maxPosition), y: Float64.random(in: 0...maxPosition)),
			Velocity(x: Float64.random(in: 0...maxSpeed), y: Float64.random(in: 0...maxSpeed)),
			Collider(radius: Float64.random(in: 0...maxCollider)),
			Count()
		)
	}

	let fixedTime = 15.0 * 0.001

	for iterCount in 0..<iterations {
		let start = CFAbsoluteTimeGetCurrent()

		moveCircles(&world, fixedTime: fixedTime, maxPosition: maxPosition)

		var deathCount = 0
		checkCollisions(&world, &deathCount, collisionLimit: collisionLimit)

		for _ in 0..<deathCount {
			try world.spawn(
				Position(x: Float64.random(in: 0...maxPosition), y: Float64.random(in: 0...maxPosition)),
				Velocity(x: Float64.random(in: 0...maxSpeed), y: Float64.random(in: 0...maxSpeed)),
				Collider(radius: Float64.random(in: 0...maxCollider)),
				Count()
			)
		}

		let end = CFAbsoluteTimeGetCurrent()
		let dt = end - start
		print("\(iterCount) \(dt * 1000)ms")
	}
}
