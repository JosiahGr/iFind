//
//  DashboardView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// This is a page that is intended for "Parents only". Features the settings and progress reset button on top right corner, and allows entry by clicking on the "Bookshelf" container. 

import SwiftUI

struct DashboardView: View {
    var body: some View {
        GeometryReader { geo in
                Image("dashboardView_wallpaper")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: .center)
                    .opacity(1.0)
                
            NavigationView {
                ZStack {
                    NavigationStack {
                        NavigationLink(destination: BookshelfView()) {
                            Text("Bookshelf")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 300, height: 200, alignment: .center)
                                .background(Image("bookshelfView_wallpaper").resizable().scaledToFill())
                                .border(.white, width: 10)
                                .cornerRadius(15)
                        }
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}
