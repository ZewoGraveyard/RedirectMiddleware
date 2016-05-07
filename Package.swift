import PackageDescription

let package = Package(
    name: "RedirectMiddleware",
    dependencies: [
        .Package(url: "https://github.com/SwiftX/S4.git", majorVersion: 0, minor: 6)
    ]
)
