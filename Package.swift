// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "kiwi",
    platforms: [.macOS(.v10_15)],
    products: [
        .library(
            name: "Kiwi",
            targets: ["Kiwi"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-docc-plugin", from: "1.0.0")
    ],
    targets: [
        .target(
            name: "Kiwi",
            dependencies: []
            // swiftSettings: [.unsafeFlags([
            //     "-Xfrontend",
            //     "-warn-long-function-bodies=100",
            //     "-Xfrontend",
            //     "-warn-long-expression-type-checking=100",
            // ])]
        ),
        .executableTarget(
            name: "Benchmarks",
            dependencies: [
                "Kiwi"
            ]
        ),
        .testTarget(
            name: "kiwi-ecs-tests",
            dependencies: ["Kiwi"],
            swiftSettings: [.unsafeFlags([
                "-Xfrontend",
                "-warn-long-function-bodies=100",
                "-Xfrontend",
                "-warn-long-expression-type-checking=50",
            ])]
        )
    ]
)
