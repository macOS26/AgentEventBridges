// swift-tools-version: 6.2
import PackageDescription

let package = Package(
    name: "AgentEventBridges",
    platforms: [.macOS(.v26)],
    products: [
        .library(name: "AgentEventBridges", targets: ["AgentEventBridges"]),
        .library(name: "ScriptingBridgeCommon", targets: ["ScriptingBridgeCommon"]),
    ],
    targets: [
        .target(
            name: "ScriptingBridgeCommon",
            path: "Sources/AgentEventBridges",
            sources: ["ScriptingBridgeCommon.swift"]
        ),
        .target(
            name: "AgentEventBridges",
            dependencies: ["ScriptingBridgeCommon"],
            path: "Sources/AgentEventBridges",
            exclude: ["ScriptingBridgeCommon.swift"]
        ),
    ]
)
