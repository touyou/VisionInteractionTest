//
//  VisionInteractionTestApp.swift
//  VisionInteractionTest
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI
import MainFeature
import ImmersiveFeature

@main
struct VisionInteractionTestApp: App {
    var body: some Scene {
        WindowGroup {
            MainView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
