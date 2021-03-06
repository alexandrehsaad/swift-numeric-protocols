// swift-tools-version:5.6

import PackageDescription

let package: Package = .init(
	name: "swift-numeric-protocols",
	defaultLocalization: "en",
	products: [
		.library(name: "NumericProtocols", targets: ["NumericProtocols"])
	],
	dependencies: [
		.package(url: "https://github.com/apple/swift-docc-plugin.git", .upToNextMinor(from: "1.0.0"))
	],
	targets: [
		.target(name: "NumericProtocols", path: "Sources"),
		.testTarget(name: "NumericProtocolsTests", dependencies: ["NumericProtocols"], path: "Tests")
	],
	swiftLanguageVersions: [.v5]
)
