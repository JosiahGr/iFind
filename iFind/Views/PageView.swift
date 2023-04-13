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
    @State private var imageIndex = 0
    @State private var gameSize = 5
    @State private var gameStart = true
    
    @State private var starRatings = [0: "0_score", 1: "1_score", 2: "2_score", 3: "3_score", 4: "4_score", 5: "5_score", 6: "6_score", 7: "7_score", 8: "8_score", 9: "9_score", 10: "10_score"]
    @State private var score = 0
    
    var body: some View {
        
        let imageValue = thumbnailImages[imageIndex]
        let stars = starRatings[score]
        
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
                ZStack {
                    
                    //                MARK: When section of image is found and clicked on, score++, lock section of thumbnail, move to next item, and remove from dictionairy
                    
                    if firstThumbnail == true && imageIndex == 0 && firstIsSelected != true || gameStart == true {
                        Button {
                            gameStart = false
                            score += 1
                            imageIndex += 1
                            firstIsSelected = true
                            
                            if secondIsSelected == false {
                                imageIndex = 1
                                secondThumbnail = true
                            } else if thirdIsSelected == false {
                                imageIndex = 2
                                thirdThumbnail = true
                            } else if fourthIsSelected == false {
                                imageIndex = 3
                                fourthThumbnail = true
                            } else if fifthIsSelected == false {
                                imageIndex = 4
                                fifthThumbnail = true
                            } else {
                                print("I win")
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
                            
                            if thirdIsSelected == false {
                                imageIndex = 2
                                thirdThumbnail = true
                            } else if fourthIsSelected == false {
                                imageIndex = 3
                                fourthThumbnail = true
                            } else if fifthIsSelected == false {
                                imageIndex = 4
                                fifthThumbnail = true
                            } else if firstIsSelected == false {
                                firstThumbnail = true
                                imageIndex = 0
                            } else {
                                print("I win")
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
                            
                            if fourthIsSelected == false {
                                imageIndex = 3
                                fourthThumbnail = true
                            } else if fifthIsSelected == false {
                                imageIndex = 4
                                fifthThumbnail = true
                            } else if firstIsSelected == false {
                                firstThumbnail = true
                                imageIndex = 0
                            } else if secondIsSelected == false {
                                imageIndex = 1
                                secondThumbnail = true
                            } else {
                                print("I win")
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
                            
                            if fifthIsSelected == false {
                                imageIndex = 4
                                fifthThumbnail = true
                            } else if firstIsSelected == false {
                                firstThumbnail = true
                                imageIndex = 0
                            } else if secondIsSelected == false {
                                imageIndex = 1
                                secondThumbnail = true
                            } else if thirdIsSelected == false {
                                imageIndex = 2
                                thirdThumbnail = true
                            } else {
                                print("I win")
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
                            
                            if firstIsSelected == false {
                                firstThumbnail = true
                                imageIndex = 0
                            } else if secondIsSelected == false {
                                imageIndex = 1
                                secondThumbnail = true
                            } else if thirdIsSelected == false {
                                imageIndex = 2
                                thirdThumbnail = true
                            } else if fourthIsSelected == false {
                                imageIndex = 3
                                fourthThumbnail = true
                            } else {
                                print("I win")
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
            }
            
            VStack {
                ZStack {
                    
                    RoundFloatingButtonLeft(title: "", titleColor: .clear, nextView: BookView(), icon: "chevron.left", color: .white, fontColor: .black.opacity(0.6))
                        .padding(.top, 80)
                        .padding(.leading)
                    
                    Image("\(stars!)")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 50)
                        .padding(.leading, 500)
                        .padding(.bottom, 320)
                    
                    
                }
            }
            
            
            
            if score == gameSize {
                Group {
                        NavigationLink(destination: BookView()) {
                            VStack {
                                Image("victory")
                                    .resizable()
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 500, height: 200)
                                
                                Text("Great Work!")
                                    .font(.title)
                                    .foregroundColor(.orange)
                                    .padding()
                            }
                            .padding(.top, 20)
                        }
                }
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
                            
                            if imageIndex == 0 {
                                if firstIsSelected != true {
                                    firstThumbnail = true
                                    
                                } else {
                                    imageIndex += 1
                                }
                            }
                            
                            if imageIndex == 1 {
                                if secondIsSelected != true {
                                    secondThumbnail = true
                                    
                                } else {
                                    imageIndex += 1
                                }
                            }
                            
                            if imageIndex == 2 {
                                if thirdIsSelected != true {
                                    thirdThumbnail = true
                                    
                                } else {
                                    imageIndex += 1
                                }
                            }
                            
                            if imageIndex == 3 {
                                if fourthIsSelected != true {
                                    fourthThumbnail = true
                                    
                                } else {
                                    imageIndex += 1
                                }
                            }
                            
                            if imageIndex == 4 {
                                if fifthIsSelected != true {
                                    fifthThumbnail = true
                                    
                                } else {
                                    imageIndex += 1
                                }
                            }
                            
                            if imageIndex == gameSize {
                                if firstIsSelected == false {
                                    imageIndex = 0
                                    firstThumbnail = true
                                } else if secondIsSelected == false {
                                    imageIndex = 1
                                    secondThumbnail = true
                                } else if thirdIsSelected == false {
                                    imageIndex = 2
                                    thirdThumbnail = true
                                } else if fourthIsSelected == false {
                                    imageIndex = 3
                                    fourthThumbnail = true
                                } else if fifthIsSelected == false {
                                    imageIndex = 4
                                    fifthThumbnail = true
                                } else {
                                    print("I Win")
                                }
                            }
                            
                        }, label: {
                            Text("\(imageValue!)")
                                .frame(width: 90, height: 90)
                            //                            Image("\(imageValue!)")
                            //                                .resizable()
                            //                                .aspectRatio(contentMode: .fit)
                            //                                .frame(width: 100, height: 100)
                        })
                        .background(.orange)
                        .cornerRadius(20.0)
                    }.padding(.bottom, 80)
                }.padding(.trailing, 30)
            }
        }.navigationBarBackButtonHidden(true)
    }
}


struct PageView_Previews: PreviewProvider {
    static var previews: some View {
        PageView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
