//
//  DefaultView.swift
//  VisionInteractionTest
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI
import RealityKit
import RealityKitContent

public struct DefaultView: View {
    @StateObject private var state: DefaultViewState
    
    @Environment(\.openImmersiveSpace) var openImmersiveSpace
    @Environment(\.dismissImmersiveSpace) var dismissImmersiveSpace
    
    public init() {
        self._state = .init(wrappedValue: .init())
    }

    public var body: some View {
        VStack {
            Model3D(named: "Scene", bundle: realityKitContentBundle)
                .padding(.bottom, 50)

            Text("Hello, world!")

            Toggle("Show Immersive Space", isOn: $state.showImmersiveSpace)
                .toggleStyle(.button)
                .padding(.top, 50)
        }
        .padding()
        .onChange(of: state.showImmersiveSpace) { _, newValue in
            Task {
                await state.onChange(
                    newValue: newValue,
                    openImmersiveSpace: openImmersiveSpace,
                    dismissImmersiveSpace: dismissImmersiveSpace
                )
            }
        }
    }
}

#Preview(windowStyle: .automatic) {
    DefaultView()
}
