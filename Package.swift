// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "YF_GMS",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "YF_GMS",
            targets: ["YF_GMS_Target"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/leonard-li/YF_Core_SPM.git", 
            from: "1.7.8"
        )
    ],
    targets: [
        .target(
            name: "YF_GMS_Target",
            dependencies: [
                "YF_GMS_Binary"
                .product(name: "YF_Core", package: "YF_Core_SPM")
            ]
        ),
        .binaryTarget(
            name: "YF_GMS_Binary",
            url: "https://mvn.yifants.cn/artifactory/fineboost-spm/gms/1.0.1/YFGMSSDK.xcframework.zip",
            checksum: "5fed32ccd1d3959ceb4709d350b0a25d9608d50145986896f33554137af51651"
        )
    ]
)