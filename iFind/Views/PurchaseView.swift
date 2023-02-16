//
//  PurchaseView.swift
//  iFind
//
//  Created by Josiah Green on 2/11/23.
//

import SwiftUI

struct PurchaseView: View {
    var body: some View {
        ZStack {
            Image("purchase_view_background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            RoundFloatingButtonRight(nextView: BookshelfView(), icon: "xmark", color: .white, fontColor: .gray)
                .navigationBarBackButtonHidden(true)
            VStack {
                
                Text("UNLOCK ALL INTERACTIVE BOOKS")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.black.opacity(0.7))
                    .padding(.top, 20)
                    .padding(.bottom, 1)
                
                Image("purchase_screen_container")
                    .resizable()
                    .frame(width: 500.0, height: 180.0)
            
                Button(action: { }) {
                    Text(" Unlock everything for $2.99 ")
                        .bold()
                        .padding(8)
                }
                .buttonStyle(.borderedProminent)
                .tint(Color.orange)
                .cornerRadius(50)
                .padding(.top, 5)
                
                Button(action: { }) {
                    Text("Restore Purchases")
                        .padding(.top, 10)
                    
                }
                .tint(Color.orange)
                
                HStack{
                    Link("Terms of Service", destination: URL(string: "HTTPS://www.Google.com")!)
                        .tint(Color.black)
                        .font(.subheadline)
                        .underline()
                    
                    Text("and")
                        .font(.subheadline)
                    
                    Link("Privacy Policy", destination: URL(string: "HTTPS://www.Google.com")!)
                        .tint(Color.black)
                        .font(.subheadline)

                }.ignoresSafeArea()
            }
            
        }
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
