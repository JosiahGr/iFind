//
//  DashboardContainerView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct DashboardContainerView: View {
    
    var title: String = "Title"
    var color: Color
    var fontColor: Color
    var image: String = ""
    
    var body: some View {
        NavigationLink(destination: BookshelfView()) {
            Text(title)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(fontColor)
                .frame(width: 300, height: 220, alignment: .center)
                .background(Image(image).resizable().scaledToFill())
                .border(color, width: 15)
                .cornerRadius(12)
        }
        .shadow(radius: 10, x: 3, y: 3)
        .padding(30)
    }
}

struct DashboardContainerView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardContainerView(title: "Bookshelf", color: .orange, fontColor: .white, image: "bookshelfView_wallpaper")
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
