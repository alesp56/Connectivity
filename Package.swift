// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "Connectivity",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9),
        .macOS(.v10_10)
    ],
    products: [
        .library(
            name: "Connectivity",
            targets: ["Connectivity"]
        )
    ],
    targets: [
        .target(
            name: "Connectivity",
            dependencies: ["O7Reachability"],
            path: "Connectivity/Classes",
            exclude: ["O7Reachability"],
            swiftSettings: [.define("IMPORT_REACHABILITY")]
        ),
        .target(
            name: "O7Reachability",
            dependencies: [],
            path: "Connectivity/Classes/O7Reachability",
            publicHeadersPath: ""
        )
    ]
)
