// swift-tools-version:5.5
//
//  Package.swift
//  IsoCountryCodes
//
//  Created by Sidney de Koning on 09/01/15.
//  Copyright (c) 2015 Funky Monkey, www.funky-monkey.nl. All rights reserved.
//

import PackageDescription

let package = Package(
    name: "IsoCountryCodes",
    platforms: [.iOS(.v9),
                .macOS(.v10_12),
                .watchOS(.v6),
                .tvOS(.v10)],
    products: [
        .library(
            name: "IsoCountryCodes",
            targets: ["IsoCountryCodes"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "IsoCountryCodes",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "IsoCountryCodesTests",
            dependencies: ["IsoCountryCodes"],
            path: "Tests"
        ),
    ]
)
