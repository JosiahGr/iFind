//
//  PageContainerView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct PageContainerView: View {
    
        var purchased: Bool = false
        var title: String = "Title"
        var color: Color
        var fontColor: Color
        var image: String = ""
        var progress: String
        
        var body: some View {
            
            if purchased != true {
                NavigationLink( destination: PurchaseView()) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .overlay(purchaseOverlay(color: self.color), alignment: .topLeading)
                        .overlay(progressOverlay(color: self.color, progress: self.progress), alignment: .bottomTrailing)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                        
                }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
            } else {
                NavigationLink( destination: PageView()) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .overlay(progressOverlay(color: self.color, progress: self.progress), alignment: .bottomTrailing)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
            }
    }
}

struct PageContainerView_Previews: PreviewProvider {
    static var previews: some View {
        PageContainerView(title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
