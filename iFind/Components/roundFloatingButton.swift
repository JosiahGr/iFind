//
//  roundFloatingButton.swift
//  iFind
//
//  Created by Josiah Green on 2/12/23.
//

import SwiftUI

struct roundFloatingButton: View {
    
    var icon: String = ""
    var color: Color
    var fontColor: Color
    
    var body: some View {
        ZStack{
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        // go somewhere
                    }, label: {
                        Image(systemName: icon)
                            .font(.largeTitle)
                            .frame(width: 50, height: 50)
                            .background(color)
                            .clipShape(Circle())
                            .foregroundColor(fontColor)
                    })
                    .padding(.trailing, 50)
                    .padding(.top, 30)
                    .shadow(radius: 2)
                }
                Spacer()
            }
        }
    }
}

struct roundFloatingButton_Previews: PreviewProvider {
    static var previews: some View {
        roundFloatingButton(icon: "gearshape", color: .green, fontColor: .white)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
