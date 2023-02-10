//
//  BookContainerView.swift
//  iFind
//
//  Created by Josiah Green on 2/9/23.
//

import SwiftUI
import UIColorHexSwift

struct BookContainerView: View {

    var title: String = "Title"
    var color: Color
    var fontColor: Color
    var image: String = ""
        
        var body: some View {
            
            HStack {
                NavigationLink(destination: BookView()) {
                    Text(title)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(fontColor)
                        .frame(width: 230, height: 220, alignment: .center)
                        .background(Image(image).resizable().scaledToFill())
                        .border(color, width: 10)
                        .cornerRadius(12)
                }
             }
                .shadow(radius: 10, x: 3, y: 3)
                .padding(30)
        }
    }


struct BookContainerView_Previews: PreviewProvider {
    static var previews: some View {
        BookContainerView(title: "Animals", color: .red, fontColor: .black, image: "animals_container")
            
    }
}
