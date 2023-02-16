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
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    BookContainerView(pagesView: PageView(), purchased: true, title: "Cats", color: .black, fontColor: .black, image: "animals_container", progress: "2")
                    BookContainerView(pagesView: PageView(), purchased: true, title: "Dogs", color: .orange, fontColor: .black, image: "bookshelfView_wallpaper", progress: "0")
                    BookContainerView(pagesView: PageView(), purchased: true, title: "Trees", color: .purple, fontColor: .black, image: "animals_container", progress: "10")
                    BookContainerView(pagesView: PageView(), title: "Ocean Life", color: .green, fontColor: .black, image: "splashView_wallpaper", progress: "0")
                    BookContainerView(pagesView: PageView(), title: "Toys", color: .black, fontColor: .black, image: "animals_container", progress: "0")
                }
                .padding(.top, 25)
            }
            
            RoundFloatingButtonLeft(nextView: DashboardView(), icon: "chevron.left", color: .clear, fontColor: .black)
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
