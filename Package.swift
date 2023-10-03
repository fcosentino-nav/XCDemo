// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MapboxMaps",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "MapboxMaps",
            targets: ["MapboxMaps"])
    ],
    targets: [
         .binaryTarget(
            name: "MapboxCoreMaps",
            path: "MapboxCoreMaps.xcframework"),
        .target(
            name: "MapboxMaps",
            dependencies: [
                "MapboxCoreMaps",
                .product(name: "MapboxCommon", package: "mapbox-common-ios"),
                .product(name: "Turf", package: "turf-swift")
            ],
            path: "MapboxMaps.xcframework")
    ]
)