// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(    
    name: "background_fetch",
    platforms: [
        .iOS("13.0")
    ],
    products: [
        .library(
            name: "background-fetch",
            targets: ["background_fetch"]
        )
    ],    
    dependencies: [
        .package(url: "https://github.com/transistorsoft/transistor-background-fetch.git", from: "4.1.0"),
        .package(name: "FlutterFramework", path: "../FlutterFramework")
    ],
    targets: [
        .target(
            name: "background_fetch",
            dependencies: [
                .product(name: "TSBackgroundFetch", package: "transistor-background-fetch"),
                .product(name: "FlutterFramework", package: "FlutterFramework")
            ],
            cSettings: [
                .headerSearchPath("include/background_fetch")
            ]
        )        
    ]
)
