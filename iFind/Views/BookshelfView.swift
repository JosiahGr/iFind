//
//  BookshelfView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// This is where all the different book series will live. Horizontally scrollable. Houses a "Home" slide to unlock button and a series of all available book containers.

import SwiftUI

struct BookshelfView: View {
    
    var body: some View {
        NavigationView {
                // create an array of "book" classes to display here when new book is added.
                ZStack {
//                    ScrollView (.horizontal) { // added last minute, build an array that displays horizontally
                        NavigationLink(destination: BookView()) {
                            Text("Animals")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(width: 230, height: 220, alignment: .center)
                                .background(Image("animals_container").resizable().scaledToFill())
                                .border(.white, width: 10)
                                .cornerRadius(12)
                        }
//                    }
                    .shadow(radius: 10, x: 3, y: 3)
                    .padding(100)
                    .background( Image("bookshelfView_wallpaper")
                        .resizable()
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    )
                }

            //        uncomment code after customized back button is functional
            //        .navigationBarBackButtonHidden(true)
        }
    }
}

struct BookshelfView_Previews: PreviewProvider {
    static var previews: some View {
        BookshelfView()
    }
}
