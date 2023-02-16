//
//  RoundFloatingButtonRight.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct RoundFloatingButtonRight<TargetView: View>: View {
    
    var nextView: TargetView
    var icon: String = ""
    var color: Color
    var fontColor: Color
    
    var body: some View {
        ZStack{
            VStack {
                HStack {
                    Spacer()
                    
                    NavigationLink(destination: nextView) {
                        Image(systemName: icon)
                            .font(.title)
                            .frame(width: 40, height: 40)
                            .background(color)
                            .clipShape(Circle())
                            .foregroundColor(fontColor)
                    }
                    .padding(.trailing , 35)
                    .padding(.top, 30)
                    .shadow(radius: 2)
                }
                
                Spacer()
            }
        }
    }
}

struct RoundFloatingButtonRight_Previews: PreviewProvider {
    static var previews: some View {
        RoundFloatingButtonRight(nextView: PageView(), icon: "xmark", color: .gray, fontColor: .white)
    }
}
