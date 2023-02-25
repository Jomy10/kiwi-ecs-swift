 #if os(Linux)
    import Glibc
#else
    import Darwin.C
#endif

import XCTest
@testable import Kiwi

struct Pos: Component, Equatable {
    var x: Int8
    var y: Int8
}

struct Name: Component, Equatable {
    var name: String
}

struct Vel: Component, Equatable {
    var x: Int
    var y: Int
}

final class kiwi_ecs_swiftTests: XCTestCase {
    func testSpawn() throws {
        var world = World()

        let expectedPos = Pos(x: 1, y: 4)
        let expectedName = Name(name: "Hello world")

        let id = world.spawn(expectedPos, expectedName)

        let pos: Pos = try world.getComponent(of: id)
        XCTAssertEqual(expectedPos, pos)

        let name: Name = try world.getComponent(of: id)
        XCTAssertEqual(expectedName, name)
    }

    func testSpawn2() {
        var world = World()
        (0..<10000).forEach { i in
            world.spawn(Name(name: "Hello world - \(i)"))
        }

        (0..<10000).forEach { (i: Int) in
            let _ = XCTAssertEqual(try! world.getComponent(of: EntityId(i)), Name(name: "Hello world - \(i)"))
        }
    }

    func testHasComponent() throws {
        var world = World()
        let id = world.spawn(Name(name: "Hello world"))
        XCTAssertTrue(world.hasComponent(entity: id, Name.self))
        XCTAssertFalse(world.hasComponent(entity: id, Pos.self))
    }

    func testGetComponentMutPtr() throws {
        var world = World()

        let id = world.spawn(Pos(x: 0, y: 1))
        try world.getComponent(of: id) { (posPtr: UnsafeMutablePointer<Pos>) in
            posPtr.pointee.x = 10
            posPtr.pointee.y = 59
        }

        XCTAssertEqual(Pos(x: 10, y: 59), try world.getComponent(of: id))
    }

    func testGetComponentMutInout() throws {
        var world = World()

        let id = world.spawn(Pos(x: 0, y: 1))

        try world.getComponent(of: id) { (posPtr: inout Pos) in
            posPtr.x = 10
            posPtr.y = 59
        }

        XCTAssertEqual(Pos(x: 10, y: 59), try world.getComponent(of: id))
    }

    enum Flags: FlagId {
        typealias RawValue = FlagId
        case Player
        case Enemy
        case Wall
    }

    func testFlags() throws {
        var world = World()

        let id = world.spawn()

        // print("== Player ==")
        world.setFlag(entity: id, Flags.Player)
        XCTAssert(world.hasFlag(entity: id, Flags.Player))
        // print("== Player && Wall ==")
        world.setFlag(entity: id, Flags.Wall)
        XCTAssert(world.hasFlag(entity: id, Flags.Player) && world.hasFlag(entity: id, Flags.Wall))
        // print("== Wall ==")
        world.removeFlag(entity: id, Flags.Player)
        XCTAssert(world.hasFlag(entity: id, Flags.Wall))
    }

    func testQuery() throws {
        var world = World()

        world.spawn()
        let correctId = world.spawn(Name(name: "Hello"), Pos(x: 0, y: 10), Vel(x: 11, y: 25))
        world.spawn(Name(name: "Hello"), Pos(x: 1, y: 12))

        var count = 0
        world.query(Name.self, Pos.self, Vel.self).getWithIds()
            .forEach { (id: EntityId, name: Name, pos: Pos, vel: Vel) in
                XCTAssertEqual(id, correctId)
                XCTAssertEqual(Name(name: "Hello"), name)
                XCTAssertEqual(Pos(x: 0, y: 10), pos)
                XCTAssertEqual(Vel(x: 11, y: 25), vel)
                count += 1

            }
        XCTAssertEqual(count, 1)
    }

    func testQueryMut() throws {
        var world = World()

        let id1 = world.spawn(Pos(x: 0, y: 10))
        let id2 = world.spawn(Vel(x: 4, y: 11), Pos(x: 9, y: 15))

        world.queryMut(Pos.self)
            .mutate { (pos: inout Pos) in
                pos.x += 1
            }

        world.query(Pos.self).getWithIds()
            .forEach { (id: EntityId, pos: Pos) in
                if id == id1 {
                    XCTAssertEqual(pos, Pos(x: 1, y: 10))
                } else if id == id2 {
                    XCTAssertEqual(pos, Pos(x: 10, y: 15))
                } else {
                    XCTFail()
                }
            }
    }

    func testReuseEntityIds() throws {
        var world = World()

        let id1 = world.spawn(Pos(x: 0, y: 10))
        world.setFlag(entity: id1, Flags.Player)
        XCTAssertEqual(world.entityCount, 1)
        XCTAssertEqual(world.queryIds().map { $0 }, [0])
        var count = 0
        world.query(Pos.self).get()
            .forEach { (_: Pos) in count += 1 }
        XCTAssertEqual(count, 1)
        XCTAssert(world.hasFlag(entity: id1, Flags.Player))

        world.kill(entity: id1)

        XCTAssertEqual(world.entityCount, 0)
        XCTAssertEqual(world.queryIds().map { $0 }, [])
        count = 0
        world.query(Pos.self).get()
            .forEach { (_: Pos) in count += 1 }
        XCTAssertEqual(count, 0)
        
        let id2 = world.spawn(Pos(x: 0, y: 10))
        XCTAssertEqual(id2, id1)
        XCTAssertEqual(world.entityCount, 1)
        XCTAssertEqual(world.queryIds().map { $0 }, [0])
        count = 0
        world.query(Pos.self).get()
            .forEach { (_: Pos) in count += 1 }
        XCTAssertEqual(count, 1)
        XCTAssert(!world.hasFlag(entity: id1, Flags.Player))
    }
}
