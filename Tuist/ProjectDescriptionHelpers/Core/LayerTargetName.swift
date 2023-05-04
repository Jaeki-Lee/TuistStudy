//
//  LayerTargetName.swift
//  ProjectDescriptionHelpers
//
//  Created by jaeki-w on 2023/05/04.
//

import ProjectDescription

public protocol LayerTargetName: RawRepresentable where RawValue == String {
    var layer: any Layer.Type { get }
    var targetName: String { get }
}

extension LayerTargetName {
    public var targetName: String {
        self.rawValue
    }
    
    public func dep(isSPM: Bool = false) -> Dep {
        if isSPM {
            return .external(name: self.rawValue)
        } else {
            return .project(
                target: targetName,
                path: <#T##Path#>
            )
        }
    }
}
