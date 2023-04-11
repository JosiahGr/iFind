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
    
    @State private var firstIsSelected = false
    @State private var secondIsSelected = false
    @State private var thirdIsSelected = false
    @State private var fourthIsSelected = false
    @State private var fifthIsSelected = false
    
    @State private var thumbnailImages = [0: "thumbnail1", 1: "thumbnail2", 2: "thumbnail1", 3: "thumbnail2", 4: "thumbnail1"]
    @State private var imageIndex = 0
    
    func removeFromDict(index: Int) {
        
        thumbnailImages.removeValue(forKey: index)
    }
    
    var body: some View {
        
        let imageValue = thumbnailImages[imageIndex]
        
        ZStack {
            Image("beeBackground-01")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            Group {
                if firstIsSelected == true {
                    Image("bee-Green-01")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                    
                    // remove from thumbnail array
                    // set highlight to opacity 1.0
                    // go to next object in array
                }
                
                if secondIsSelected == true {
                    Image("bee-Yellow-01")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                
                if thirdIsSelected == true {
                    Image("bee-lightGreen-01")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                
                if fourthIsSelected == true {
                    Image("bee-Red-01")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
                
                if fifthIsSelected == true {
                    Image("bee-Blue-01")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
                }
            }
            
            Group {
                if firstThumbnail == true {
                    Button {
                        firstIsSelected = true
                        firstThumbnail = false
                        secondThumbnail = true
                        imageIndex = 1
                        removeFromDict(index: 0)
                        
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
                        secondIsSelected = true
                        secondThumbnail = false
                        thirdThumbnail = true
                        imageIndex = 2
                        removeFromDict(index: 1)
                        
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
                        thirdIsSelected = true
                        thirdThumbnail = false
                        fourthThumbnail = true
                        imageIndex = 3
                        removeFromDict(index: 2)
                        
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
                        fourthIsSelected = true
                        fourthThumbnail = false
                        fifthThumbnail = true
                        imageIndex = 4
                        removeFromDict(index: 3)
                        
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
                        fifthIsSelected = true
                        fifthThumbnail = true
                        imageIndex = 0
                        removeFromDict(index: 4)
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 550 , y: 355)
                }
            }
            
            
            if thumbnailImages.count == 0 {
                Text("Great Work!")
                    .font(.title)
                    .foregroundColor(.white)
                    .padding(50)
                    .background(.orange)
            } else {
                HStack {
                    Spacer()
                    
                    VStack {
                        Spacer()
                        
                        Button(action: {
                            
                            if imageIndex < thumbnailImages.count - 1 {
                                imageIndex += 1
                                
                            } else if imageIndex > thumbnailImages.count - 1 {
                                imageIndex = 0
                            }
                            
                            switch imageIndex {
                            case 0:
                                firstThumbnail = true
                            case 1:
                                secondThumbnail = true
                            case 2:
                                thirdThumbnail = true
                            case 3:
                                fourthThumbnail = true
                            case 4:
                                fifthThumbnail = true
                            default:
                                print("something went wrong")
                                
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
