//
//  RoundFloatingButtonRight.swift
//  iFind
//
//  Created by Josiah Green on 2/14/23.
//

import SwiftUI

struct RoundFloatingButtonRight: View {
    @EnvironmentObject var sheetManager: SheetManager
    
    //  @State var showingDetail = false
    
    var icon: String = ""
    var color: Color
    var fontColor: Color
    
    var body: some View {
        ZStack{
            VStack {
                HStack {
                    Spacer()
                    Button(action: {
                        withAnimation {
                            sheetManager.present()
                        }
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


struct RoundFloatingButtonRight_Previews: PreviewProvider {
    static var previews: some View {
        RoundFloatingButtonRight(icon: "gearshape", color: .green, fontColor: .white)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}