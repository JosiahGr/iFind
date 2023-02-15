//
//  ParentAuthButton.swift
//  iFind
//
//  Created by Josiah Green on 2/15/23.
//

import SwiftUI

struct ParentAuthButton: View {
    
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var num: String = "0"
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 50, height: 50)
                .foregroundColor(isSelected ? color: .blue)
            Text(text)
                .foregroundColor(.white)
                .font(.title)
        }
    }
}

struct ParentAuthButton_Previews: PreviewProvider {
    static var previews: some View {
        ParentAuthButton(isSelected: .constant(false), color: .gray, text: "1")
    }
}
