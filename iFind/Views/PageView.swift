//
//  PageView.swift
//  iFind
//
//  Created by Josiah Green on 2/16/23.
//

import SwiftUI

struct PageView: View {
    
    @State private var firstThumbnail = false
    @State private var secondThumbnail = false
    @State private var thirdThumbnail = false
    @State private var fourthThumbnail = false
    @State private var fifthThumbnail = false
    
    @State private var firstIsSelected = false
    @State private var secondIsSelected = false
    @State private var thirdIsSelected = false
    @State private var fourthIsSelected = false
    @State private var fifthIsSelected = false
    @State private var thumbnailImages = [0: "one", 1: "two", 2: "three", 3: "four", 4: "five"]
    //    @State private var thumbnailImages = [0: "thumbnail1", 1: "thumbnail2", 2: "thumbnail1", 3: "thumbnail2", 4: "thumbnail1"]
    @State private var imageIndex = 0
    @State private var gameSize = 5
    @State private var gameStart = true
    
    
    @State private var score = 0
    
//    func removeFromDict(index: Int) {
//
//        thumbnailImages.removeValue(forKey: index)
//    }
    
    var body: some View {
        
        var imageValue = thumbnailImages[imageIndex]
        
        ZStack {
            Image("beeBackground-01")
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            Group {
                
                // MARK: Shows highlighted image over static image when selected
                
                if firstIsSelected == true {
                    Image("bee-Green-01")
                        .scaledToFill()
                        .edgesIgnoringSafeArea(.all)
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
                
                //                MARK: When section of image is found and clicked on, score++, lock section of thumbnail, move to next item, and remove from dictionairy
                
                if firstThumbnail == true && imageIndex == 0 && firstIsSelected != true || gameStart == true {
                    Button {
                        gameStart = false
                        score += 1
                        imageIndex += 1
                        firstIsSelected = true
                        
                        if secondIsSelected != true {
                            secondThumbnail = true
                        }
                        
                    } label: {
                        Text(" ")
                            .padding(.horizontal, 80)
                            .padding(.vertical, 40)
                    }
                    .background(.clear)
                    .position(x: 180, y: 165)
                }
                
                if secondThumbnail == true && imageIndex == 1 && secondIsSelected != true {
                    Button {
                        score += 1
                        imageIndex += 1
                        secondIsSelected = true
                        
                        if thirdIsSelected != true {
                            thirdThumbnail = true
                        }
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 193 , y: 370)
                }
                
                if thirdThumbnail == true && imageIndex == 2 && thirdIsSelected != true {
                    Button {
                        score += 1
                        imageIndex += 1
                        thirdIsSelected = true
                        
                        if fourthIsSelected != true {
                            fourthThumbnail = true
                        }
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 365 , y: 255)
                }
                
                if fourthThumbnail == true && imageIndex == 3 && fourthIsSelected != true {
                    Button {
                        score += 1
                        imageIndex += 1
                        fourthIsSelected = true
                        
                        if fifthIsSelected != true {
                            fifthThumbnail = true
                        }
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 550 , y: 170)
                }
                
                if fifthThumbnail == true && imageIndex == 4 && fifthIsSelected != true {
                    Button {
                        score += 1
                        fifthIsSelected = true
                        imageIndex += 1
                        if imageIndex == 5 {
                            imageIndex = 0
                        }
                        
                        if firstIsSelected != true {
                            firstThumbnail = true
                        }
                        
                    } label: {
                        Text(" ")
                            .padding(.vertical, 55)
                            .padding(.horizontal, 75)
                    }
                    .background(.clear)
                    .position(x: 550 , y: 355)
                }
            }
            
            
            if score == gameSize {
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
                        
//                        MARK: This section allows for rotating through the thumbnail images based on the dictionary
                        
                        Button(action: {
                            
                            if gameStart == true {
                                gameStart = false
                            }
                            
                            if imageIndex < gameSize {
                                imageIndex += 1
                            }
                            
                            if score == gameSize {
                                imageValue = ""
                            }
                            
                            if imageIndex == 0 {
                                if firstIsSelected != true {
                                    firstThumbnail = true
                                    
                                } else {
                                    imageIndex = 1
                                }
                            }
                            
                            if imageIndex == 1 {
                                if secondIsSelected != true {
                                    secondThumbnail = true
                                    
                                } else {
                                    imageIndex = 2
                                }
                            }
                            
                            if imageIndex == 2 {
                                if thirdIsSelected != true {
                                    thirdThumbnail = true
                                    
                                } else {
                                    imageIndex = 3
                                }
                            }
                            
                            if imageIndex == 3 {
                                if fourthIsSelected != true {
                                    fourthThumbnail = true
                                    
                                } else {
                                    imageIndex = 4
                                }
                            }
                            
                            if imageIndex == 4 {
                                if fifthIsSelected != true {
                                    fifthThumbnail = true
                                    
                                } else {
                                    imageIndex = 5
                                }
                            }
                            
                            if imageIndex == gameSize {
                                imageIndex = 0
                            }
                                                        
                        }, label: {
                            Text("\(imageValue!)")
                                .frame(width: 100, height: 100)
                            //                            Image("\(imageValue!)")
                            //                                .resizable()
                            //                                .aspectRatio(contentMode: .fit)
                            //                                .frame(width: 100, height: 100)
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
