import ProjectDescription

let project = Project(
    name: "Test",
    targets: [
        .target(
            name: "TargetA",
            destinations: .macOS,
            product: .framework,
            bundleId: "io.tuist.",
            infoPlist: .default,
            sources: ["TargetA/Sources/**"],
            dependencies: [
                .external(name: "Collections")
            ]
        ),

        .target(
            name: "TargetB",
            destinations: .macOS,
            product: .framework,
            bundleId: "io.tuist.",
            infoPlist: .default,
            sources: ["TargetB/Sources/**"],
            dependencies: [
                .target(name: "TargetA")
            ]
        )
    ]
)
