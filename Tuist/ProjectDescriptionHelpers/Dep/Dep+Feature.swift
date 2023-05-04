//
//  Dep+Feature.swift
//  ProjectDescriptionHelpers
//
//  Created by jaeki-w on 2023/05/04.
//

public extension Dep {
    struct Feature { }
}

extension Dep.Feature: Layer {
    public static var name: String = "Feature"
    
    public enum TargetName: String, LayerTar
}
