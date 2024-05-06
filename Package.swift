// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "diff-match-patch",
    products: [
        .library(
            name: "DiffMatchPatch",
            targets: ["DiffMatchPatch"]
        )
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DiffMatchPatch",
            path: "Sources/DiffMatchPatch",
            publicHeadersPath: "include",
            cSettings: [
                .headerSearchPath("."),
                .unsafeFlags(["-fno-objc-arc"])
            ]
        )
    ]
)
