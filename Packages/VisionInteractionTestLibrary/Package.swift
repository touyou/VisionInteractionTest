// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "VisionInteractionTestLibrary",
    products: [
        .library(name: "MainFeature", targets: ["MainFeature"]),
        .library(name: "Store", targets: ["Store"]),
        .library(name: "RealityKitContent", targets: ["RealityKitContent"]),
    ],
    dependencies: [],
    targets: [
        .target(name: "MainFeature", dependencies: ["RealityKitContent"]),
        .target(name: "Store"),
        .target(name: "RealityKitContent", dependencies: []),
    ]
)
