//
//  BookView.swift
//  iFind
//
//  Created by Josiah Green on 2/8/23.
//

// A view of all the available "pages" inside a specific book. Horizontally scrollable. Will include a back button and purchasing mechanics if not already unlocked.

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
            RoundFloatingButtonLeft(nextView: BookshelfView(), icon: "chevron.left", color: .clear, fontColor: .blue)
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
