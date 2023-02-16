//
//  BookView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// This View contains all the available "pages" inside of a specific book, additionally this page is the main access point to the purchase screen through locked books.

import SwiftUI

struct BookView: View {
    
    var body: some View {
        ZStack {
            Image("animals_wallpaper")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "2")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "10")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                }
                .padding(.top, 25)
            }
            RoundFloatingButtonLeft(nextView: BookshelfView(), icon: "chevron.left", color: .clear, fontColor: .black)
                    .navigationBarBackButtonHidden(true)
        }
    }
}


struct BookView_Previews: PreviewProvider {
    static var previews: some View {
        BookView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
