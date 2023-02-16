//
//  DashboardView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// This is a page that is intended for "Parents only". Features the settings and progress reset button on top right corner, and allows entry by clicking on the "Bookshelf" container.

import SwiftUI

struct DashboardView: View {
    
    @EnvironmentObject var sheetManager: SheetManager
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("dashboardView_wallpaper")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                HStack {
                    DashboardContainerView(title: "Bookshelf", color: .white, fontColor: .white, image: "bookshelfView_wallpaper")
                }
                .padding(.top, 25)
                
                RoundFloatingButtonRight(icon: "gearshape", color: .blue, fontColor: .white)
                RoundFloatingButtonRight(icon: "arrow.counterclockwise.circle", color: .white, fontColor: .black)
                    .padding(.trailing, 80)
            }
            .overlay(alignment: .center) {
                if sheetManager.action.isPresented {
                    ParentAuthView {
                        withAnimation {
                            sheetManager.dismiss()
                        }
                    }
                }
            }
            .ignoresSafeArea()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .previewInterfaceOrientation(.landscapeLeft)
            .environmentObject(SheetManager())
    }
}
