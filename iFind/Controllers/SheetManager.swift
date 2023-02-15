//
//  SheetManager.swift
//  iFind
//
//  Created by Josiah Green on 2/14/23.
//

import Foundation

final class SheetManager: ObservableObject {
    
    enum Action {
        case na
        case present
        case dismiss
    }
    @Published private(set) var action: Action = .na
    
    func present() {
        guard !action.isPresented else { return }
        self.action = .present
    }
    
    func dismiss() {
        self.action = .dismiss
    }
}

extension SheetManager.Action {
    
    var isPresented: Bool { self == .present }
}
