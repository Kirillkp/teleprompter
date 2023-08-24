// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SettingsPage",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "SettingsPage",
            targets: ["SettingsPage"]),
    ],
    dependencies: [
        .package(path: "../Coordinator")
    ],
    targets: [
        .target(
            name: "SettingsPage",
            dependencies: ["Coordinator"]),
        .testTarget(
            name: "SettingsPageTests",
            dependencies: ["SettingsPage"]),
    ]
)
