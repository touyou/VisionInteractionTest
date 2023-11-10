//
//  ContentView.swift
//  VisionInteractionTest
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI
import RealityKit
import RealityKitContent
import Store
import ImmersiveFeature

public struct MainView: View {
    @StateObject private var state: MainViewState
    
    @EnvironmentObject private var store: MainStore
    
    public init() {
        self._state = .init(wrappedValue: .init())
    }

    public var body: some View {
        TabView {
            DefaultView()
                .tabItem {
                    Label("Default", systemImage: "house")
                }
        }
        .tabViewStyle(DefaultTabViewStyle())
    }
}

#Preview(windowStyle: .automatic) {
    MainView()
}
