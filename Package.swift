// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BHAPIManager",
    platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BHAPIManager",
            targets: ["BHAPIManager"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.6.1"))
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(name: "BHAPIManager", path: "Sources/Frameworks/BHAPIManager.xcframework"),
        .testTarget(
            name: "BHAPIManagerTests",
            dependencies: ["BHAPIManager"])
    ]
)
