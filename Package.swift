// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DGFadingLabel",
    platforms: [.iOS(.v12)],
    products: [
        .library(
            name: "DGFadingLabel",
            targets: ["DGFadingLabel"]),
    ],
    targets: [
        .target(
            name: "DGFadingLabel",
            dependencies: []),
        .testTarget(
            name: "DGFadingLabelTests",
            dependencies: ["DGFadingLabel"]),
    ]
)
