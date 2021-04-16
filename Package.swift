// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "CombineStore",
  platforms: [.iOS(.v13), .macOS(.v10_15)],
  products: [
    .library(
      name: "CombineStore",
      targets: ["CombineStore"]
    ),
  ],
  targets: [
    .target(
      name: "CombineStore",
      dependencies: []
    )
  ]
)
