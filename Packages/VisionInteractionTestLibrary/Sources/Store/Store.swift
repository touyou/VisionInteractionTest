//
//  MainStore.swift
//
//
//  Created by lease-emp-mac-yosuke-fujii on 2023/09/04.
//

import SwiftUI

@MainActor
public class MainStore: ObservableObject {
    public enum TabViewStyleType {
        case `default`
        case page
    }
    @Published public private(set) var tabViewStyle: TabViewStyleType = .default
    
    public init() {}
}
