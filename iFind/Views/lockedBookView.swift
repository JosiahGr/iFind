//
//  LockedBookView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct LockedBookView: View {
    var body: some View {
        ZStack {
            ScrollView (.horizontal, showsIndicators: false) {
                HStack {
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                    PageContainerView(purchased: false, title: "Page Test", color: .red, fontColor: .black, image: "animals_container", progress: "0")
                }
                .padding(.top, 25)
            }
            RoundFloatingButtonLeft(title: "Animals", titleColor: .orange, nextView: BookView(), icon: "chevron.left", color: .clear, fontColor: .black)
                    .navigationBarBackButtonHidden(true)
        }
    }
}

struct LockedBookView_Previews: PreviewProvider {
    static var previews: some View {
        LockedBookView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
