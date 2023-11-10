//
//  VisionInteractionTestApp.swift
//  VisionInteractionTest
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI
import MainFeature
import ImmersiveFeature
import Store

@main
struct VisionInteractionTestApp: App {
    @StateObject var store = MainStore()
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
        .environmentObject(store)

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
