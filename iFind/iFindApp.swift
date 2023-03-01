//
//  iFindApp.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

import SwiftUI

@main
struct iFindApp: App {
    
    @StateObject var sheetManager = SheetManager()
    
    init(){
        UINavigationBar.setAnimationsEnabled(false)
    }
    
    
    var body: some Scene {
        WindowGroup {
            SplashView()
                .environmentObject(sheetManager)
        }
    }
}
