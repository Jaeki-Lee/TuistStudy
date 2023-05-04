//
//  BundleId.swift
//  ProjectDescriptionHelpers
//
//  Created by jaeki-w on 2023/05/04.
//

import ProjectDescription

public enum BundleId {
    private static let base = "TuistStudy"
}

extension BundleId {
    public static func name(_ name: String) -> String {
        "\(BundleId.base).\(name)"
    }
}
