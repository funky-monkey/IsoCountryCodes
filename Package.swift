// swift-tools-version:4.2
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
    products: [
        .library(
            name: "IsoCountryCodes",
            targets: ["IsoCountryCodes"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "IsoCountryCodes",
            dependencies: [],
            path: "Sources")
    ]
)
