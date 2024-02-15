// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "architecture-team-a-ios",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "architecture-team-a-ios",
            targets: ["HHIndication", "HHLens", "HHList", "HHListExtension", "HHModule", "HHNetwork", "HHPagingManager", "HHSkeleton"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/onmyway133/DeepDiff.git", .upToNextMajor(from: "2.3.3")),
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: "15.0.3")),
        .package(url: "https://github.com/gonzalonunez/Skeleton.git", .upToNextMajor(from: "0.5.1")),
        .package(url: "https://github.com/kishikawakatsumi/KeychainAccess.git", .branch("master")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "HHIndication",
            dependencies: [
                "HHModule"
            ],
            path: "Source/HHIndication"),
        .target(
            name: "HHLens",
            dependencies: [],
            path: "Source/HHLens"),
        .target(
            name: "HHList",
            dependencies: [
                .product(name: "DeepDiff", package: "DeepDiff")
            ],
            path: "Source/HHList"),
        .target(
            name: "HHListExtension",
            dependencies: [
                "HHList", 
                "HHModule"
            ],
            path: "Source/HHListExtension"),
        .target(
            name: "HHModule",
            dependencies: [],
            path: "Source/HHModule"),
        .target(
            name: "HHNetwork",
            dependencies: [
                .product(name: "KeychainAccess", package: "KeychainAccess"),
                .product(name: "Moya", package: "Moya")
            ],
            path: "Source/HHNetwork"),
        .target(
            name: "HHPagingManager",
            dependencies: [],
            path: "Source/HHPagingManager"),
        .target(
            name: "HHSkeleton",
            dependencies: [
                .product(name: "Skeleton", package: "Skeleton"),
                "HHIndication", 
                "HHModule"
            ],
            path: "Source/HHSkeleton"),
    ]
)
