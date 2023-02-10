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
//        Image("bookshelfView_wallpaper")
//            .resizable()
//            .scaledToFill()
//            .edgesIgnoringSafeArea(.all)
        
        ScrollView (.horizontal) {
            HStack {
                NavigationLink(destination: BookView()) {
                    BookContainerView(title: "Cats", color: .black, fontColor: .black, image: "animals_container")
                    BookContainerView(title: "Dogs", color: .orange, fontColor: .black, image: "animals_container")
                    BookContainerView(title: "Ocean Life", color: .green, fontColor: .black, image: "animals_container")
                    BookContainerView(title: "Trees", color: .purple, fontColor: .black, image: "animals_container")
                    BookContainerView(title: "Toys", color: .black, fontColor: .black, image: "animals_container")
                }
            }

        }
        .navigationBarBackButtonHidden(true)
    }
}

struct BookshelfView_Previews: PreviewProvider {
    static var previews: some View {
        BookshelfView()
    }
}
