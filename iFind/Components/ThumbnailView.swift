//
//  ThumbnailView.swift
//  iFind
//
//  Created by Josiah Green on 4/8/23.
//

import SwiftUI

struct ThumbnailView: View {

    @State var thumbnailImages: [Int: String]
    @State private var imageIndex: Int = 0

    
    let color: Color
    
    var body: some View {
        
        let imageValue = thumbnailImages[imageIndex]
        
        HStack {
            Spacer()
            
            VStack {
                Spacer()
                
                Button(action: {
                    imageIndex += 1
                    
                    if imageIndex > thumbnailImages.count-1 {
                        imageIndex = thumbnailImages.count
                    }
                    
                }, label: {
                    Image("\(imageValue!)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 100)
                })
                .background(color)
                .cornerRadius(100.0)
            }.padding(5)
        }.padding(10)
    }
}

struct ThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailView(thumbnailImages: [0: "thumbnail1", 1: "thumbnail2", 2: "thumbnail1", 3: "thumbnail2", 4: "thumbnail1"], color: .orange)
    }
}

// TODO: Cycle through images on click, allow only the image shown to be available to click on page
