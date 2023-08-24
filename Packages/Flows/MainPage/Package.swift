// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MainPage",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "MainPage",
            targets: ["MainPage"]),
    ],
    dependencies: [
        .package(path: "../Coordinator")
    ],
    targets: [
        .target(
            name: "MainPage",
            dependencies: ["Coordinator"]),
        .testTarget(
            name: "MainPageTests",
            dependencies: ["MainPage"]),
    ]
)
