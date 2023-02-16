//
//  PurchaseView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct PurchaseView: View {
    var body: some View {
        RoundFloatingButtonLeft(nextView: PageView(), icon: "house.fill", color: .blue, fontColor: .white)
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
