// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    name: "Toolbox",
    platforms: [
        .iOS("15.0"),
        .macOS("12.0")
    ],
    products: [
        .library(
            name: "Toolbox",
            targets: ["Toolbox"]
        )
    ],
    targets: [
        .target(
            name: "Toolbox",
            path: "Toolbox"
        ),
        .testTarget(
            name: "ToolboxTests",
            dependencies: ["Toolbox"],
            path: "ToolboxTests"
        )
    ]
)
