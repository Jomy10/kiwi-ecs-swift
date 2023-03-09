# Kiwi

Kiwi is a performant and versatile entity component system focussing on fast
iteration and a nice api.

To get started, read the [usage guide](#usage) below.
A documentation site will be set up later.

## Usage

### The world

The world is the main object that controls the ecs.

```swift
var world = World()
defer { world.destroy() }
```

`world.destroy()` is used to clean up memory. This should always be executed when the
world is not needed anymore.

Keep in mind that `World` is a struct, so when you pass it around be sure to use `inout`.

### Components

Creating components is as simple as declaring a struct:

```swift
struct Position: Component {
  var x: Int
  var y: Int
}
```

For performance reasons you might want to declare an additional property on these structs,
but this is not strictly required:

```swift
struct Position: Component {
  static let id: Int = UUID().hashValue

  var x: Int
  var y: Int
}
```

### Entities

An entity is spawned with a set of components:

```swift
let entityId = world.spawn(Position(x: 10, y: 10))
world.spawn(Position(x: 3, y: 5), Velocity(x: 1.5, y: 0.0))
```

The `world.spawn(_ components: Component...)` function will return the id of the newly spawned entity.

### Systems

#### Queries

Queries can be constructed as follows:

```swift
//===================
// Immutable queries
//===================

// Query all entities having a position component
world.query(Position.self)
  .get() // required in every query immutable query
  .forEach { (pos: Position) in // type hint here is neccesary!
    print(pos)
  }

// Query all entites having a position and a velocity component and their entity ids
world.query(Position.self, Velocity.self)
  .getWithIds() // Besides querying the component, also query the entity ids
  .forEach { (id: EntityId, pos: Position, vel: Velocity) in
    // ...
  }

//===================
// Mutable queries
//===================

// Query all entities having a position and velocity component mutably
world.queryMut(Position.self, Velocity.self)
  .mutate { (pos: inout Position, vel: inout Velocity) // type hints and inout keyword neccesary
    pos.x += vel.x
    pos.y += vel.y
  }

// Query all entities having a position component mutably as well as their entity ids
world.queryMut(Position.self)
  .mutateWithIds { (id: EntityId, pos: inout Position) in
    // ...
  }
```

#### System Groups

system groups are currently unimplemented and are planned for a future release.

### Flags

Components can't be zero-sized. This is where a flag can be used.

#### Defining flags

```swift
enum Flags: FlagId {
  case Player
  case Enemy
}
```

#### Setting flags

```swift
let id = world.spawn()

world.setFlag(entity: id, Flags.Player)
```

#### Removing a flag

```swift
world.removeFlag(entity: id, Flags.Player)
```

#### Checking wether an entity has a flag

```swift
world.hasFlag(entity: id, Flags.Player)
```

#### Fltering queries with flags

```swift
world.query(Position.self)
  .getWithIds()
  .filter { (id: EntityId, _: Position) in world.hasFlag(entity: id, Flags.Player) }
  .forEach { (_, pos) in
    print(pos)
  }
```

The `hasFlags` function is also available.

### Road map

- [ ] System groups

### Contributing

Contributers are welcome to open an issue requesting new features or fixes or opening a
pull request for them.

### License

The library is currenlty licensed under LGPLv3.
