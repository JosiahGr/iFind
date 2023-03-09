//
//  PageView.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct PageView: View {
    
    
    @State var showOutline1: Bool = false
//    @State var showOutline2: Bool = false
//    @State var showOutline3: Bool = false
//    @State var showOutline4: Bool = false
//    @State var showOutline5: Bool = false
    @State var total: Int = 0
    
    var body: some View {
        ZStack {
            Image("beeBackground-01")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            //            HStack {
            //                RoundFloatingButtonLeft(title: "", titleColor: .black, nextView: BookView(), icon: "chevron.left", color: .clear, fontColor: .black)
            //                    .navigationBarBackButtonHidden(true)
            //            }
            
            if showOutline1 == false {
                
                Image("bee-Yellow-01").onTapGesture(perform: {
                    showOutline1 = true
                    total += 1
                })
                .opacity(0.0)
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
                
            } else if showOutline1 == true {
                Image("bee-Yellow-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
            VStack {
                HStack {
                    Spacer()
                    Text("\(total)")
                }.font(.title)
            }
        }
    }
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
