//
//  BookContainerView.swift
//  iFind
//
//  Created by Josiah Green on 2/9/23.
//

import SwiftUI

struct purchaseOverlay: View {
    var color: Color
    
    var body: some View {
        ZStack {
            Image(systemName: "lock")
                .frame(width: 50, height: 35, alignment: .center)
                .background(color)
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
            if progress != "10" {
                Text("\(progress)/10")
                    .frame(width: 70, height: 35, alignment: .center)
                    .background(color)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            } else {
                Text("\(progress)/10")
                    .frame(width: 70, height: 35, alignment: .center)
                    .background(color)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
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
                        .overlay(purchaseOverlay(color: self.color), alignment: .topLeading)
                        .overlay(progressOverlay(color: self.color, progress: self.progress), alignment: .bottomTrailing)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
                
            } else if progress == "10" {
                
                // TODO: Add "completed" banner here
                
                    NavigationLink(destination: BookView()) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(fontColor)
                            .frame(width: 230, height: 220, alignment: .center)
                            .overlay(progressOverlay(color: self.color, progress: self.progress), alignment: .bottomTrailing)
                            .background(Image(image).resizable().scaledToFill())
                            .overlay(Image("finished_banner").resizable().scaledToFill())
                            .border(color, width: 10)
                            .cornerRadius(12)
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
}


struct BookContainerView_Previews: PreviewProvider {
    static var previews: some View {
        BookContainerView(purchased: true, title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
        BookContainerView(purchased: false, title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
