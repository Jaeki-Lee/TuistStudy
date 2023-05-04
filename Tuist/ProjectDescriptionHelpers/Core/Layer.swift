//
//  Layer.swift
//  ProjectDescriptionHelpers
//
//  Created by jaeki-w on 2023/05/04.
//

import ProjectDescription

public protocol Layer {
    associatedtype TargetName: RawRepresentable where TargetName.RawValue == String
    
    static var name: String { get }
    static func target(name: TargetName) -> Dep
}

extension Layer {
    public static func target(name: TargetName) -> Dep {
        .target(name: name.rawValue)
    }
}
