//
//  RoundFloatingButtonLeft.swift
//  iFind
//
//  Created by Josiah Green on 2/14/23.
//

import SwiftUI

struct RoundFloatingButtonLeft<TargetView: View>: View {

    var title: String
    var titleColor: Color
    var nextView: TargetView
    var icon: String = ""
    var color: Color
    var fontColor: Color
    
    var body: some View {
                VStack {
                    HStack {
                        
                        NavigationLink(destination: nextView) {
                                Image(systemName: icon)
                                    .font(.largeTitle)
                                    .bold()
                                    .frame(width: 50, height: 50)
                                    .background(color)
                                    .clipShape(Circle())
                                    .foregroundColor(fontColor)
                        
                        }
                        .padding(.leading, 20)
                        .padding(.top, 20)
                        .shadow(radius: 2)
                        
                        HStack {
                            
                            Text(title)
                                .font(.system(size: 42))
                                .bold()
                                .foregroundColor(titleColor)
                                .padding(.top, 20)
                                .padding(.trailing, 60)
                            
                            Spacer()
                        }
                    }
                    Spacer()
                }
            }
}

struct RoundFloatingButtonLeft_Previews: PreviewProvider {
    static var previews: some View {
        RoundFloatingButtonLeft(title: "Animals", titleColor: .orange, nextView: PageView(), icon: "chevron.left", color: .clear, fontColor: .black.opacity(0.7))
    }
}
