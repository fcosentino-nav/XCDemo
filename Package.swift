// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MapboxMaps",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        .library(
            name: "MapboxMaps",
            targets: ["MapboxMaps"])
    ],
    targets: [
        .binaryTarget(
            name: "MapboxMaps",
            path: "MapboxMaps.xcframework")
    ]
)
