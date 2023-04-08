//
//  PageView.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct PageView: View {
    
    @State var counter: Int = 0
    @State private var firstIsSelected = false
    @State private var secondIsSelected = false
    
    var body: some View {
        
        ZStack {
            
            Image("beeBackground-01")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            if firstIsSelected == true {
                
                Image("bee-Green-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                // remove from thumbnail array
                // set highlight to opacity 1.0
                // go to next object in array
            }
            
            if secondIsSelected {
                
                Image("bee-Yellow-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                // remove from thumbnail array
                // set highlight to opacity 1.0
                // go to next object in array
            }
            
            ZStack {
                Button("image 1") {
                    self.counter += 1
                    firstIsSelected.toggle()
                    
                }
                .background(.blue)
                .opacity(firstIsSelected ? 0 : 1) //MARK: only used for testing: remove when picture is finished
                .padding(200)
            }
            .position(x: 50, y: 100)
            
            ZStack {
                Button("image 2") {
                    self.counter += 1
                    secondIsSelected.toggle()
                }
                .background(.blue)
                .opacity(firstIsSelected ? 0 : 1) //MARK: only used for testing: remove when picture is finished
                .padding(200)
                .opacity(secondIsSelected ? 0 : 1) //MARK: only used for testing: remove when picture is finished
            }
            
        }
        
        Text("\(counter)")
    }
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
