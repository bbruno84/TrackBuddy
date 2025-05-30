// swift-tools-version:5.8
import PackageDescription

let package = Package(
    name: "TrackBuddy",
    platforms: [.iOS(.v18)],
    products: [
        .library(name: "SessionCore", targets: ["SessionCore"]),
        .library(name: "GPSTracker", targets: ["GPSTracker"]),
        .library(name: "MessageSystem", targets: ["MessageSystem"]),
        .library(name: "TelemetryEngine", targets: ["TelemetryEngine"])
    ],
    targets: [
        .target(
            name: "SessionCore",
            dependencies: [],
            path: "SessionCore/Sources/SessionCore"
        ),
        .target(
            name: "GPSTracker",
            dependencies: ["SessionCore"],
            path: "GPSTracker/Sources/GPSTracker"
        ),
        .target(
            name: "MessageSystem",
            dependencies: [],
            path: "MessageSystem/Sources/MessageSystem"
        ),
        .target(
            name: "TelemetryEngine",
            dependencies: ["SessionCore", "GPSTracker"],
            path: "TelemetryEngine/Sources/TelemetryEngine"
        )
    ]
)
