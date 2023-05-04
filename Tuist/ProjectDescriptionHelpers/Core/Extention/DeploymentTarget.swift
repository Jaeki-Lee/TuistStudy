//
//  DeploymentTarget.swift
//  ProjectDescriptionHelpers
//
//  Created by jaeki-w on 2023/05/04.
//

import ProjectDescription

//iOS 의 타켓 버전 및 지원 기기
extension DeploymentTarget {
    public static let iOS: Self = .iOS(
        targetVersion: "16.0",
        devices: [
            .iphone,
            .ipad
        ]
    )
}
