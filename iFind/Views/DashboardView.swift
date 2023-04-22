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
    @State private var whichOne: String = "0"
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Image("dashboardView_wallpaper")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                ZStack {
                    DashboardContainerView(title: "Bookshelf", color: .white, fontColor: .white, image: "bookshelfView_container")
                }

                PopUpViewButton(selected: .constant(true), icon: "gearshape", color: .white, fontColor: .blue)
                    .overlay(alignment: .center) {
                        if sheetManager.action.isPresented {
                                ParentAuthView {
                                    withAnimation {
                                        sheetManager.dismiss()
                                    }
                                }
                            }
                        }
            }

            .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
            .previewInterfaceOrientation(.landscapeLeft)
            .environmentObject(SheetManager())
    }
}
