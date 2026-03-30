// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AgentEventBridges",
    platforms: [.macOS(.v26)],
    products: [
        .library(name: "AgentEventBridges", targets: ["AgentEventBridges"]),
    ],
    targets: [
        .target(
            name: "AgentEventBridges",
            path: "Sources/AgentEventBridges"
        ),
    ]
)
