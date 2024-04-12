import ProjectDescription

let project = Project(
    name: "T",
    targets: [
        .target(
            name: "T",
            destinations: .iOS,
            product: .app,
            bundleId: "io.tuist.T",
            infoPlist: .extendingDefault(
                with: [:
                    
                ]
            ),
            sources: ["T/Sources/**"],
            resources: ["T/Resources/**"],
            dependencies: [
                .external(name: "FirebaseMessaging", condition: nil),
                .external(name: "FirebaseAnalyticsSwift", condition: nil),
                .external(name: "FirebasePerformance", condition: nil),
                .external(name: "FirebaseCrashlytics", condition: nil),
                .external(name: "FirebaseDynamicLinks", condition: nil),
            ]
        ),
        .target(
            name: "TTests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "io.tuist.TTests",
            infoPlist: .default,
            sources: ["T/Tests/**"],
            resources: [],
            dependencies: [.target(name: "T")]
        ),
    ]
)
