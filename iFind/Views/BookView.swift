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
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "10")
                    PageContainerView(purchased: true, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "10")
                }
                .padding(.top, 40)
                .padding(.leading, 50)
            }
            RoundFloatingButtonLeft(title: "Animals", titleColor: .orange, nextView: BookshelfView(), icon: "chevron.left", color: .clear, fontColor: .black.opacity(0.6))
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
