// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SegueManager",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "SegueManager",
            targets: ["SegueManager"]),
    ],
    dependencies: [
        .package(url: "https://github.com/mac-cain13/R.swift.git", .upToNextMajor(from: "6.1.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "SegueManager",
            path: "src"),
        .testTarget(
            name: "SegueManagerTests",
            dependencies: ["SegueManager"]),
    ]
)
