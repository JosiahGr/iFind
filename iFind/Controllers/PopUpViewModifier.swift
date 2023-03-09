//
//  PopUpViewModifier.swift
//  iFind
//
//  Created by Josiah Green on 2/28/23.
//
//
//import Foundation
//import SwiftUI
//
//struct PopUpViewModifier: ViewModifier {
//
//    @ObservedObject var sheetManager: SheetManager
//
//    func body(content: Content) -> some View {
//        content
//            .overlay(alignment: .center) {
//                if case let .present(config) = sheetManager.action {
//                    PopUpView(config: config) {
//                        withAnimation {
//                            sheetManager.dismiss()
//                        }
//                    }
//                }
//            }
//            .ignoresSafeArea()
//    }
//}
//
//extension View {
//    func popup(with sheetManager: SheetManager) -> some View {
//        self.modifier(PopUpViewModifier(sheetManager: sheetManager))
//    }
//}
