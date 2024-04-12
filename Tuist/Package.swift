// swift-tools-version: 5.9
import PackageDescription

#if TUIST
    import ProjectDescription

    let packageSettings = PackageSettings( 
        productTypes: [:]
    )
#endif

let package = Package(
    name: "T",
    dependencies: [
        .package(url: "https://github.com/firebase/firebase-ios-sdk", from: "10.22.0"),
        ]
)
