// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TreeSitterLanguages",
    platforms: [.iOS(.v14)],
    products: [
        .library(name: "TreeSitterHTML", targets: ["TreeSitterHTML"]),
        .library(name: "TreeSitterHTMLQueries", targets: ["TreeSitterHTMLQueries"]),
        .library(name: "TreeSitterJSON", targets: ["TreeSitterJSON"]),
        .library(name: "TreeSitterJSONQueries", targets: ["TreeSitterJSONQueries"]),
        .library(name: "TreeSitterJSON5", targets: ["TreeSitterJSON5"]),
        .library(name: "TreeSitterJSON5Queries", targets: ["TreeSitterJSON5Queries"]),
        .library(name: "TreeSitterMaparoni", targets: ["TreeSitterMaparoni"]),
        .library(name: "TreeSitterMaparoniQueries", targets: ["TreeSitterMaparoniQueries"]),
        .library(name: "TreeSitterMarkdown", targets: ["TreeSitterMarkdown"]),
        .library(name: "TreeSitterMarkdownQueries", targets: ["TreeSitterMarkdownQueries"]),
        .library(name: "TreeSitterRegex", targets: ["TreeSitterRegex"]),
        .library(name: "TreeSitterRegexQueries", targets: ["TreeSitterRegexQueries"]),
        .library(name: "TreeSitterRunestone", targets: ["TreeSitterRunestone"]),
    ],
    dependencies: [
        .package(name: "Runestone", url: "https://github.com/maparoni/Runestone.git", branch: "swiftui")
    ],
    targets: [
        .target(name: "TreeSitterHTML", cSettings: [.headerSearchPath("src"), .unsafeFlags(["-w"])]),
        .target(name: "TreeSitterHTMLQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterJSON", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSONQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterJSON5", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterJSON5Queries", resources: [.copy("queries")]),
        .target(name: "TreeSitterMaparoni", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterMaparoniQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterMarkdown", cSettings: [.headerSearchPath("src"), .unsafeFlags(["-w"])]),
        .target(name: "TreeSitterMarkdownQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterRegex", cSettings: [.headerSearchPath("src")]),
        .target(name: "TreeSitterRegexQueries", resources: [.copy("queries")]),
        .target(name: "TreeSitterRunestone", dependencies: [
          "Runestone",
          "TreeSitterHTML", "TreeSitterHTMLQueries",
          "TreeSitterJSON", "TreeSitterJSONQueries",
//          "TreeSitterJSON5", "TreeSitterJSON5Queries",
          "TreeSitterMaparoni", "TreeSitterMaparoniQueries",
          "TreeSitterMarkdown", "TreeSitterMarkdownQueries",
//          "TreeSitterRegex", "TreeSitterRegexQueries",
        ]),
    ]
)
