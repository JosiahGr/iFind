//
//  BookshelfView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// This view contains all the different book for iFind. Houses a "Home" slide to unlock button and a series of all available book containers.

import SwiftUI

struct BookshelfView: View {
    
    var body: some View {
        ZStack{
            Image("bookshelfView_wallpaper")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    BookContainerView(pagesView: BookView(), purchased: true, title: "Cats", color: .black, fontColor: .black, image: "animals_container", progress: "2")
                    BookContainerView(pagesView: BookView(), purchased: true, title: "Dogs", color: .black, fontColor: .black, image: "bookshelfView_container", progress: "0")
                    BookContainerView(pagesView: BookView(), purchased: true, title: "Trees", color: .black, fontColor: .black, image: "animals_container", progress: "10")
                    BookContainerView(pagesView: BookView(), title: "Ocean Life", color: .black, fontColor: .black, image: "splashView_wallpaper", progress: "0")
                    BookContainerView(pagesView: BookView(), title: "Toys", color: .black, fontColor: .black, image: "animals_container", progress: "0")
                }
                .padding(.top, 40)
            }
            
            RoundFloatingButtonLeft(title: " ", titleColor: .black, nextView: DashboardView(), icon: "chevron.left", color: .clear, fontColor: .black.opacity(0.6))
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct BookshelfView_Previews: PreviewProvider {
    static var previews: some View {
        BookshelfView()
            .previewInterfaceOrientation(.landscapeLeft)

    }
}
