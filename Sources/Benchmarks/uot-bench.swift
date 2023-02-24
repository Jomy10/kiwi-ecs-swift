// import Kiwi
// import Foundation

// @usableFromInline
// struct Vel: Component {
// 	var id = UUID().hashValue

// 	@usableFromInline
// 	var x, y: Float64
// }

// @usableFromInline
// struct Pos: Component {
// 	var id = UUID().hashValue

// 	@usableFromInline
// 	var x, y: Float64
// }

// @usableFromInline
// struct Collider: Component {
// 	var id = UUID().hashValue

// 	@usableFromInline
// 	var radius: Float64
// 	@usableFromInline
// 	var count: UInt32
// }

// func uot() {
// 	try! bench(size: 1000, collisionLimit: 0)
// }

// func bench(size: UInt, collisionLimit: UInt32) throws {
// 	let iterations = 1000

// 	var world = World()

// 	let maxSpeed = 10.0
// 	let maxPosition = 100.0
// 	let maxCollider = 1.0

// 	for _ in 0..<size {
// 		try world.spawn(
// 			Pos(x: Float64.random(in: 0...maxPosition), y: Float64.random(in: 0...maxPosition)),
// 			Vel(x: Float64.random(in: 0...maxSpeed), y: Float64.random(in: 0...maxSpeed)),
// 			Collider(
// 				radius: Float64.random(in: 0...maxCollider),
// 				count: 0)
// 		)
// 	}

// 	let fixedTime = 0.015

// 	for iterCount in 0..<iterations {
// 		let start = CFAbsoluteTimeGetCurrent()
			
// 		moveCircles(&world, fixedTime, maxPosition)

// 		var deathCount = 0

// 		checkCollisions(&world, collisionLimit, &deathCount)

// 		for _ in 0..<deathCount {
// 			try world.spawn(
// 				Pos(x: Float64.random(in: 0...maxPosition), y: Float64.random(in: 0...maxPosition)),
// 				Vel(x: Float64.random(in: 0...maxSpeed), y: Float64.random(in: 0...maxSpeed)),
// 				Collider(
// 					radius: Float64.random(in: 0...maxCollider),
// 					count: 0)
// 			)
// 		}

// 		let end = CFAbsoluteTimeGetCurrent()
// 		let dt = end - start
// 		print("\(iterCount) \(dt * 1000)ms")
// 	}
// }

// @inlinable
// func moveCircles(_ world: inout World, _ fixedTime: Float64, _ maxPosition: Float64) {
// 	world.queryMut(Pos.self, Vel.self)
// 		.mutate { (pos: inout Pos, vel: inout Vel) in
// 			pos.x += vel.x * fixedTime
// 			pos.y += vel.y * fixedTime

// 			// bump into the bounding rect
// 			if pos.x <= 0.0 || pos.y >= maxPosition {
// 				vel.x = -vel.x
// 			}
// 			if pos.y <= 0.0 || pos.y >= maxPosition {
// 				vel.y = -vel.y
// 			}

// 		}
// }

// @inlinable
// func checkCollisions(_ world: inout World, _ collisionLimit: UInt32, _ deathCount: inout Int) {
// 	var dead: Set<EntityId> = Set()

// 	let query: some Sequence<(EntityId, Pos, Collider)> = world.query(Pos.self, Collider.self).getWithIds()

// 	world.queryMut(Pos.self, Collider.self)
// 		.mutateWithIds { (id1: EntityId, pos1: inout Pos, col1: inout Collider) in
// 			query.forEach { (id2, pos2, col2) in
// 				let dx = pos1.x - pos2.x
// 				let dy = pos2.y - pos2.y
// 				let distSq = (dx * dx) + (dy * dy)

// 				let dr = col1.radius - col2.radius
// 				let drSq = dr * dr

// 				if drSq > distSq {
// 					col1.count += 1
// 				}

// 				// kill and spawn one
// 				if collisionLimit > 0 && col1.count > collisionLimit {
// 					deathCount += 1
// 					dead.insert(id1)
// 				}
// 			}
// 		}

// 	dead.forEach { (deadId) in
// 		world.kill(entity: deadId)
// 	}
// }
