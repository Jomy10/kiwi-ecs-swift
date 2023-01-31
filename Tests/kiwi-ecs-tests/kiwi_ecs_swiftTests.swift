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
    func testSpawn() {
        var world = World()
        
        let expectedPos = Pos(x: 1, y: 4)
        let expectedName = Name(name: "Hello world")

        let id = world.spawn(expectedPos, expectedName)

        let pos: Pos = world.getComponent(of: id)
        XCTAssertEqual(expectedPos, pos)

        let name: Name = world.getComponent(of: id)
        XCTAssertEqual(expectedName, name)
    }

    // func testSpawn2() {
    //     var world = World()
    //     (0..<10000).forEach { i in
    //         world.spawn(Name(name: "Hello world - \(i)"))
    //     }

    //     (0..<10000).forEach { (i: Int) in
    //         let _ = XCTAssertEqual(world.getComponent(of: EntityId(i)), Name(name: "Hello world - \(i)"))
    //     }
    // }

    func testHasComponent() {
        var world = World()
        let id = world.spawn(Name(name: "Hello world"))
        XCTAssertTrue(world.hasComponent(entity: id, Name.self))
        XCTAssertFalse(world.hasComponent(entity: id, Pos.self))
    }
}
