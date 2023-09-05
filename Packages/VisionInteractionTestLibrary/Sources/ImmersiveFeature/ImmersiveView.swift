//
//  ImmersiveView.swift
//  VisionInteractionTest
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI
import RealityKit
import RealityKitContent

public struct ImmersiveView: View {
    @StateObject private var state: ImmersiveViewState
    
    public init() {
        self._state = .init(wrappedValue: .init())
    }
    
    public var body: some View {
        RealityView { content in
            await state.addScene(named: "Immersive", for: &content)
        }
    }
}

#Preview {
    ImmersiveView()
        .previewLayout(.sizeThatFits)
}
