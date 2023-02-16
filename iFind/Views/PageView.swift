//
//  PageView.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct PageView: View {
    var body: some View {
        RoundFloatingButtonLeft(nextView: BookView(), icon: "chevron.left", color: .clear, fontColor: .blue)
            .navigationBarBackButtonHidden(true)
    }
}

struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
