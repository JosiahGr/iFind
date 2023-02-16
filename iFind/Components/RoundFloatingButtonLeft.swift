//
//  RoundFloatingButtonLeft.swift
//  iFind
//
//  Created by Josiah Green on 2/14/23.
//

import SwiftUI

struct RoundFloatingButtonLeft: View {
    
    
    
    //  @State var showingDetail = false
    
    var icon: String = ""
    var color: Color
    var fontColor: Color
    
    var body: some View {
            ZStack{
                VStack {
                    HStack {
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
                        .padding(.leading, 35)
                        .padding(.top, 30)
                        .shadow(radius: 2)
                        
                        Spacer()
                    }
                    
                    Spacer()
                }
            }
    }
}

struct RoundFloatingButtonLeft_Previews: PreviewProvider {
    static var previews: some View {
        RoundFloatingButtonLeft(icon: "house.fill", color: .blue, fontColor: .white)
    }
}
