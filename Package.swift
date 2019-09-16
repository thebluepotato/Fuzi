// swift-tools-version:5.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuzi",
    products: [ 
        .library(name: "Fuzi", targets: ["Fuzi"]),
    ],
    dependencies: [
    .package(path: "./Clibxml2")
    ],
    targets: [
        .target(
            name: "Fuzi",
            dependencies: ["Clibxml2"],
            path: "Sources"),
        .testTarget(
            name: "FuziTests",
            dependencies: ["Fuzi"],
            path: "Tests"
        )
    ]
)
