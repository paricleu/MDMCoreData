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
            targets: ["MDMCoreDataLib"]
        ),
    ],
    targets: [
        .target(
            name: "MDMCoreDataLib",
            path: "Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath("."),
                .headerSearchPath("MDMCoreDataCore"),
                .headerSearchPath("MDMFetchedResultsCollectionDataSource"),
                .headerSearchPath("MDMFetchedResultsTableDataSource"),
                .headerSearchPath("MDMPersistenceController"),
                .headerSearchPath("NSManagedObject+MDMCoreDataAdditions"),
                .headerSearchPath("Categories"),
            ]
        )
    ]
)
