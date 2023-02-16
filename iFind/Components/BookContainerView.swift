//
//  BookContainerView.swift
//  iFind
//
//  Created by Josiah Green on 2/9/23.
//

import SwiftUI

struct PurchaseOverlay: View {
    var color: Color
    var iconColor: Color
    
    var body: some View {
        ZStack {
            Image(systemName: "lock")
                .frame(width: 50, height: 35, alignment: .center)
                .background(color)
                .foregroundColor(iconColor)
                .cornerRadius(12)
        }
    }
}

struct ProgressOverlay: View {
    var color: Color
    var fontColor: Color
    var progress: String
    
    var body: some View {
        ZStack {
            if progress != "10" {
                Text("\(progress)/10")
                    .frame(width: 70, height: 35, alignment: .center)
                    .background(color)
                    .foregroundColor(fontColor)
                    .cornerRadius(12)
            } else {
                Text("\(progress)/10")
                    .frame(width: 70, height: 35, alignment: .center)
                    .background(color)
                    .foregroundColor(fontColor)
                    .cornerRadius(12)
            }
        }
    }
}

struct BookContainerView<AnyView: View>: View {
    
    var pagesView: AnyView
    var purchased: Bool = false
    var title: String = "Title"
    var color: Color
    var fontColor: Color
    var image: String = ""
    var progress: String
    
    var body: some View {
        VStack {
            
            if purchased != true {
                NavigationLink(destination: LockedBookView()) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .overlay(PurchaseOverlay(color: self.color, iconColor: .white), alignment: .topLeading)
                        .overlay(ProgressOverlay(color: self.color, fontColor: .white, progress: self.progress), alignment: .bottomTrailing)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
                
            } else if progress == "10" {
                    NavigationLink(destination: pagesView) {
                        Text(title)
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(fontColor)
                            .frame(width: 230, height: 220, alignment: .center)
                            .overlay(ProgressOverlay(color: self.color, fontColor: .white, progress: self.progress), alignment: .bottomTrailing)
                            .background(Image(image).resizable().scaledToFill())
                            .overlay(Image("finished_banner").resizable().scaledToFill())
                            .border(color, width: 10)
                            .cornerRadius(12)
                    }
                    .shadow(radius: 10, x: 3, y: 3)
                    .padding(30)
            
        } else {
                NavigationLink(destination: pagesView) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .overlay(ProgressOverlay(color: self.color, fontColor: .white, progress: self.progress), alignment: .bottomTrailing)
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
        BookContainerView(pagesView: PageView(), purchased: true, title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
        BookContainerView(pagesView: PageView(), purchased: false, title: "Animals", color: .red, fontColor: .black, image: "animals_container", progress: "0")
            .previewInterfaceOrientation(.landscapeLeft)
            
    }
}
