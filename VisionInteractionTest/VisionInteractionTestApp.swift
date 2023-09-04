//
//  VisionInteractionTestApp.swift
//  VisionInteractionTest
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI

@main
struct VisionInteractionTestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }

        ImmersiveSpace(id: "ImmersiveSpace") {
            ImmersiveView()
        }
    }
}
