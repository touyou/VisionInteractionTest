//
//  DefaultViewState.swift
//
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import Combine
import SwiftUI

@MainActor
final class DefaultViewState: ObservableObject {
    @Published var showImmersiveSpace = false
    @Published private(set) var immersiveSpaceIsShown = false
    
    init() {
    }
    
    func onChange(newValue: Bool, openImmersiveSpace: OpenImmersiveSpaceAction, dismissImmersiveSpace: DismissImmersiveSpaceAction) async {
        if showImmersiveSpace {
            switch await openImmersiveSpace(id: "ImmersiveSpace") {
            case .opened:
                immersiveSpaceIsShown = true
            case .error, .userCancelled:
                fallthrough
            @unknown default:
                immersiveSpaceIsShown = false
                showImmersiveSpace = false
            }
        } else if immersiveSpaceIsShown {
            await dismissImmersiveSpace()
            immersiveSpaceIsShown = false
        }
    }
}
