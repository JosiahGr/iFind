//
//  PageView.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct PageView: View {
    
    @State private var firstThumbnail = true
    @State private var secondThumbnail = false
    @State private var thirdThumbnail = false
    @State private var fourthThumbnail = false
    @State private var fifthThumbnail = false
    
    @State private var firstIsSelected = 0
    @State private var secondIsSelected = 0
    @State private var thirdIsSelected = 0
    @State private var fourthIsSelected = 0
    @State private var fifthIsSelected = 0
    
    @State private var thumbnailImages = [0: "thumbnail1", 1: "thumbnail2", 2: "thumbnail1", 3: "thumbnail2", 4: "thumbnail1"]
    @State private var imageIndex = 0
    
    @State var counter = 0
    
    var body: some View {
        
        let imageValue = thumbnailImages[imageIndex]
        
        ZStack {
            
            Image("beeBackground-01")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
//            ThumbnailView(thumbnailImages: images, color: .orange)
//                .padding(.bottom, 60)
//                .padding(.trailing, 20)
            

            
            if firstIsSelected == 1 {
//                imageIndex.remove(at: 4)
                Image("bee-Green-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                
                // remove from thumbnail array
                // set highlight to opacity 1.0
                // go to next object in array
            }
            
            if secondIsSelected == 1 {
                
                Image("bee-Yellow-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
            if thirdIsSelected == 1 {
                
                Image("bee-lightGreen-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
            if fourthIsSelected == 1 {
                Image("bee-Red-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
            if fifthIsSelected == 1 {
                Image("bee-Blue-01")
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            }
            
            Group {
                
                if firstThumbnail == true {
                    Button {
                        firstIsSelected = 1
                        counter += 1
                        firstThumbnail = false
                        secondThumbnail = true
                        
                    } label: {
                        Text(" ")
                            .padding(.horizontal, 80)
                            .padding(.vertical, 40)
                    }
                    .background(.clear)
                    .position(x: 180, y: 165)
                }
                
                if secondThumbnail == true {
                    Button {
                        secondIsSelected = 1
                        counter += 1
                        secondThumbnail = false
                        thirdThumbnail = true
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 193 , y: 370)
                }
                
                if thirdThumbnail == true {
                    Button {
                        thirdIsSelected = 1
                        counter += 1
                        thirdThumbnail = false
                        fourthThumbnail = true
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 365 , y: 255)
                }
                
                if fourthThumbnail == true {
                    Button {
                        fourthIsSelected = 1
                        counter += 1
                        fourthThumbnail = false
                        fifthThumbnail = true
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 550 , y: 170)
                }
                
                if fifthThumbnail == true {
                    Button {
                        fifthIsSelected = 1
                        counter += 1
                        fifthThumbnail = true
                        
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 550 , y: 355)
                }
            }
            
            HStack {
                Spacer()
                
                VStack {
                    Spacer()
                    
                    Button(action: {
                        imageIndex += 1
                        
                        if imageIndex > thumbnailImages.count-1 {
                            imageIndex = 0
                        }
                        
                    }, label: {
                        Image("\(imageValue!)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                    })
                    .background(.orange)
                    .cornerRadius(100.0)
                }.padding(.bottom, 80)
            }.padding(.trailing, 40)
            
            
            if counter == 5 {
                Text("Great Work!")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(50)
                    .background(.orange)
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
