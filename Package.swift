// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kiwi",
    products: [
        .library(
            name: "kiwi-ecs",
            targets: ["kiwi-ecs"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "kiwi-ecs",
            dependencies: []),
        .testTarget(
            name: "kiwi-ecs-tests",
            dependencies: ["kiwi-ecs"]),
    ]
)
