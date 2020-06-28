// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Fuzi",
    products: [ 
        .library(name: "Fuzi", targets: ["Fuzi"]),
    ],
    targets: [
        .target(
            name: "Fuzi",
            path: "Sources",
            exclude: ["Info.plist"],
            linkerSettings: [.linkedLibrary("xml2")]
        ),
        .testTarget(
            name: "FuziTests",
            dependencies: ["Fuzi"],
            path: "Tests",
            exclude: ["Info.plist"],
            resources: [.process("Resources")]
        )
    ]
)
