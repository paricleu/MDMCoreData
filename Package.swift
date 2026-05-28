// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "MDMCoreData",
    platforms: [
        .iOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "MDMCoreData",
            targets: ["MDMCoreData"]
        ),
    ],
    targets: [
        .target(
            name: "MDMCoreData",
            path: "Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
