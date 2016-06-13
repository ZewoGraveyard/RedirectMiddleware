# RedirectMiddleware
[![Swift 3](https://img.shields.io/badge/Swift-3.0-orange.svg?style=flat)](https://swift.org) [![Platform Linux](https://img.shields.io/badge/Platform-Linux-lightgray.svg?style=flat)](https://swift.org) [![License MIT](https://img.shields.io/badge/License-MIT-blue.svg?style=flat)](https://tldrlegal.com/license/mit-license)

Conditionally redirect through handy middleware. [S4](https://github.com/SwiftX/S4) compatible. Works with snapshots 04/12-05/03 on 0.2, for earlier versions use 0.1.

## Usage

```swift
// will redirect to /over-there if and only if the request method is GET
let redirect = RedirectMiddleware(redirectTo: "/over-there", if: { $0.method == .get })
```

## Installation
Simply add `RedirectMiddleware` to your `Package.swift`

```swift
import PackageDescription

let package = Package(
    dependencies: [
        .Package(url: "https://github.com/Zewo/RedirectMiddleware.git", majorVersion: 0, minor: 4),
    ]
)
```

## Reach out
Have any questions? I'm active on the [SwiftX](http://swiftx-slackin.herokuapp.com) and [Zewo](http://slack.zewo.io) slacks.

## License
**RedirectMiddleware** is released under the MIT license. See LICENSE for details.
