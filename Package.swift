// swift-tools-version:5.0
import PackageDescription

let package = Package(
  name: "Rswift",
  platforms: [
    .macOS(.v10_11)
  ],
  products: [
    .library(name: "Rswift", targets: ["Rswift"])
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/Commander.git", from: "0.8.0"),
    .package(url: "https://github.com/tomlokhorst/XcodeEdit", from: "2.7.0")
  ],
  targets: [
    .target(name: "Rswift", dependencies: ["RswiftCore"]),
    .target(name: "RswiftCore", dependencies: ["Commander", "XcodeEdit"]),
    .testTarget(name: "RswiftCoreTests", dependencies: ["RswiftCore"]),
  ]
)
