//
//  PurchaseView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct PurchaseView: View {
    var body: some View {
        RoundFloatingButtonRight(icon: "xmark", color: .gray, fontColor: .black)
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
