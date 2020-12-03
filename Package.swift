// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "ViewKit",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: "ViewKit",
            targets: ["ViewKit"])
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "ViewKit",
            dependencies: [])
    ])
