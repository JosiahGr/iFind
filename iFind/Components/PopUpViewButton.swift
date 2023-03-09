//
//  PopUpViewButton.swift
//  iFind
//
//  Created by Josiah Green on 2/14/23.
//

import SwiftUI

struct PopUpViewButton: View {

    @EnvironmentObject var sheetManager: SheetManager
    @Binding var selected: Bool

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
                            sheetManager.present(with: .init(systemName: "Info", title: "Reset Password", content: "lkjalsdkfjalksdjflkasdjflkjasdflkjasdlkfjasdlkjflksda asdlkjflsdkfjalsdkjflkj aslkdjf alksdfjlksdaj flak jsdflksadjf"))
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


struct PopUpViewButton_Previews: PreviewProvider {
    static var previews: some View {
        PopUpViewButton(selected: .constant(false), icon: "gearshape", color: .green, fontColor: .white)
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
