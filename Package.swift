// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "FluentUIKit",
    platforms: [
        .iOS(.v13) // 필요한 최소 iOS 버전
    ],
    products: [
        .library(
            name: "FluentUIKit",
            targets: ["FluentUIKit"]
        ),
    ],
    targets: [
        .target(
            name: "FluentUIKit",
            path: "Sources/FluentUIKit"
        ),
        .testTarget(
            name: "FluentUIKitTests",
            dependencies: ["FluentUIKit"]
        ),
    ]
)
