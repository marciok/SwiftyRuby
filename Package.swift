import PackageDescription

let package = Package(
    name: "hello",
    dependencies: [
        .Package(url: "https://github.com/marciok/CRuby", majorVersion: 1)
    ]
)
