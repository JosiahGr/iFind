//
//  PurchaseView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct PurchaseView: View {
    var body: some View {
        RoundFloatingButtonRight(nextView: BookshelfView(), icon: "xmark", color: .gray, fontColor: .white)
                .navigationBarBackButtonHidden(true)
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
