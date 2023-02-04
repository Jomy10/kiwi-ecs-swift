import XCTest
@testable import kiwi_ecs

struct Pos: Component, Equatable {
    var x: Int8
    var y: Int8
}

struct Name: Component, Equatable {
    var name: String
}

final class kiwi_ecs_swiftTests: XCTestCase {
    func testSpawn() throws {
        var world = World()

        let expectedPos = Pos(x: 1, y: 4)
        let expectedName = Name(name: "Hello world")

        let id = try world.spawn(expectedPos, expectedName)

        let pos: Pos = try world.getComponent(of: id)
        XCTAssertEqual(expectedPos, pos)

        let name: Name = try world.getComponent(of: id)
        XCTAssertEqual(expectedName, name)
    }

    func testSpawn2() {
        var world = World()
        (0..<10000).forEach { i in
            try! world.spawn(Name(name: "Hello world - \(i)"))
        }

        (0..<10000).forEach { (i: Int) in
            let _ = XCTAssertEqual(try! world.getComponent(of: EntityId(i)), Name(name: "Hello world - \(i)"))
        }
    }

    func testHasComponent() throws {
        var world = World()
        let id = try world.spawn(Name(name: "Hello world"))
        XCTAssertTrue(world.hasComponent(entity: id, Name.self))
        XCTAssertFalse(world.hasComponent(entity: id, Pos.self))
    }

    func testGetComponentMutPtr() throws {
        var world = World()

        let id = try world.spawn(Pos(x: 0, y: 1))
        try world.getComponent(of: id) { (posPtr: UnsafeMutablePointer<Pos>) in
            posPtr.pointee.x = 10
            posPtr.pointee.y = 59
        }

        XCTAssertEqual(Pos(x: 10, y: 59), try world.getComponent(of: id))
    }

    func testGetComponentMutInout() throws {
        var world = World()

        let id = try world.spawn(Pos(x: 0, y: 1))

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

        let id = try world.spawn()

        print("== Player ==")
        world.setFlag(of: id, Flags.Player)
        XCTAssert(world.hasFlag(entity: id, Flags.Player))
        print("== Player && Wall ==")
        world.setFlag(of: id, Flags.Wall)
        XCTAssert(world.hasFlag(entity: id, Flags.Player) && world.hasFlag(entity: id, Flags.Wall))
        print("== Wall ==")
        world.removeFlag(of: id, Flags.Player)
        XCTAssert(world.hasFlag(entity: id, Flags.Wall))
    }
}
