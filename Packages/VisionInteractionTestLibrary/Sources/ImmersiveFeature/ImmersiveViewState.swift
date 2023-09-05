//
//  ImmersiveViewState.swift
//
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI
import RealityKit
import RealityKitContent

@MainActor
final class ImmersiveViewState: ObservableObject {
    init() {
    }
    
    func addScene(named name: String, for content: inout RealityViewContent) async {
        if let scene = try? await Entity(named: name, in: realityKitContentBundle) {
            content.add(scene)
        }
    }
}
