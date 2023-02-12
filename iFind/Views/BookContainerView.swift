//
//  BookContainerView.swift
//  iFind
//
//  Created by Josiah Green on 2/9/23.
//

import SwiftUI

struct purchaseOverlay: View {
    var body: some View {
        ZStack {
            Image(systemName: "lock")
                .frame(width: 50, height: 35, alignment: .center)
                .background(.green)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
    }
}

struct progressOverlay: View {
    var color: Color
    var progress: String
    
    var body: some View {
        ZStack {
            Text("\(progress)/10")
                .frame(width: 50, height: 35, alignment: .center)
                .background(color)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
    }
}

struct BookContainerView: View {
    
    var purchased: Bool = false
    var title: String = "Title"
    var color: Color
    var fontColor: Color
    var image: String = ""
    var progress: String
    
    var body: some View {
        VStack {
            
            if purchased != true {
                NavigationLink(destination: lockedBookView()) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                        .overlay(purchaseOverlay(), alignment: .topLeading)
                        .overlay(progressOverlay(color: self.color, progress: self.progress), alignment: .bottomTrailing)
                }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
            } else {
                NavigationLink(destination: BookView()) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                        .overlay(progressOverlay(color: self.color, progress: self.progress), alignment: .bottomTrailing)
                }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
            }
        }
    }
}


struct BookContainerView_Previews: PreviewProvider {
    static var previews: some View {
        BookContainerView(purchased: true, title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
        BookContainerView(purchased: false, title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
