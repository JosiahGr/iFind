//
//  ThumbnailView.swift
//  iFind
//
//  Created by Josiah Green on 4/8/23.
//

import SwiftUI

struct ThumbnailView: View {

    @State var thumbnailImages: [String]
    @State private var imageIndex: Int = 0
    let color: Color
    
    var body: some View {
        
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
                    Image(thumbnailImages[imageIndex])
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
        ThumbnailView(thumbnailImages: ["thumbnail1", "thumbnail2", "thumbnail1", "thumbnail2", "thumbnail1"], color: .orange)
    }
}

// TODO: Cycle through images on click, allow only the image shown to be available to click on page
