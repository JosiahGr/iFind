//
//  DashboardView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// This is a page that is intended for "Parents only". Features the settings and progress reset button on top right corner, and allows entry by clicking on the "Bookshelf" container. 

import SwiftUI


//    @ObservedObject var data = DataController.shared
    
struct DashboardView: View {
        var body: some View {
            NavigationView{
                ZStack {
                NavigationLink(destination: BookshelfView()) {
                        Text("Bookshelf")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .frame(width: 320, height: 220, alignment: .center)
                            .background(Image("bookshelfView_wallpaper").resizable().scaledToFill())
                            .border(.white, width: 10)
                            .cornerRadius(12)
                    }
                    .shadow(radius: 10, x: 3, y: 3)
                    .padding(100)
                    .background( Image("dashboardView_wallpaper")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    )
                }
            }
        }
    }

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
