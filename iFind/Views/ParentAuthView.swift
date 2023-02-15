//
//  ParentAuthView.swift
//  iFind
//
//  Created by Josiah Green on 2/15/23.
//

import SwiftUI

struct ParentAuthView: View {
    
    @EnvironmentObject var sheetManager: SheetManager
    
    let didClose: () -> Void
    
    
    @State private var oneIsSelected = false
    @State private var twoIsSelected = false
    @State private var threeIsSelected = false
    @State private var fourIsSelected = false
    @State private var fiveIsSelected = false
    @State private var sixIsSelected = false
    @State private var sevenIsSelected = false
    @State private var eightIsSelected = false
    @State private var nineIsSelected = false
    @State private var zeroIsSelected = false
    
    @State private var showAlert = false
    @State private var alertText = "Incorrect Answer"
    
    @State private var answer = ""
    @State private var parentAuthorized = false
    
    var equation = ["6": "2 x 3 = ?", "7": "5 + 2 = ?", "4": "2 + 2 = ?", "8": "6 + 2 = ?", "1": "5 - 4 = ?", "9": "1 x 9 = ?"]
    
    
    var body: some View {
        
        let randomEquation = equation.randomElement()!
        
        NavigationView {
            VStack {
                Text("Parents Only")
                    .font(.title)
                    .bold()
                    .padding()
                Text("To continue, please enter the correct answer.")
                    .font(.headline)
                    .bold()
                    .padding(.horizontal)
                HStack {
                    Text("\(randomEquation.value)")
                        .font(.title)
                        .bold()
                        .padding(.vertical)
                }
                
                VStack {
                    HStack {
                        ParentAuthButton(
                            isSelected: $oneIsSelected,
                            color: .gray,
                            text: "1")
                        .onTapGesture {
                            
                            oneIsSelected.toggle()
                            if oneIsSelected {

                                if "1" == randomEquation.key {
                                    print("correct answer")
                                    
                                    parentAuthorized = true
                                    
                                    print("\(parentAuthorized)")
                                    
                                    // ToDO: Go to Settings

                                } else {
                                    showAlert.toggle()
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $twoIsSelected,
                            color: .gray,
                            text: "2")
                        .onTapGesture {
                            
                            twoIsSelected.toggle()
                            if twoIsSelected {

                                if "2" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    showAlert.toggle()
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $threeIsSelected,
                            color: .gray,
                            text: "3")
                        .onTapGesture {

                            threeIsSelected.toggle()
                            if threeIsSelected {

                                if "3" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    showAlert.toggle()
                                    
                                    print("\(showAlert)")
                                    print("wrong answer")
                                }
                            }
                        }

                        ParentAuthButton(
                            isSelected: $fourIsSelected,
                            color: .gray,
                            text: "4")
                        .onTapGesture {

                            fourIsSelected.toggle()
                            if fourIsSelected {

                                if "4" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    showAlert.toggle()
                                    print("wrong answer")
                                }
                            }
                        }

                        ParentAuthButton(
                            isSelected: $fiveIsSelected,
                            color: .gray,
                            text: "5")
                        .onTapGesture {

                            fiveIsSelected.toggle()
                            if fiveIsSelected {

                                if "5" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    print("wrong answer")
                                    showAlert.toggle()
                                }
                            }
                        }
                    }

                    HStack {

                        ParentAuthButton(
                            isSelected: $sixIsSelected,
                            color: .gray,
                            text: "6")
                        .onTapGesture {

                            sixIsSelected.toggle()
                            if sixIsSelected {

                                if "6" == randomEquation.key {

                                    // ToDO: Go to Settings

                                    print("correct answer")
                                } else {
                                    print("wrong answer")
                                    showAlert.toggle()
                                }
                            }
                        }

                        ParentAuthButton(
                            isSelected: $sevenIsSelected,
                            color: .gray,
                            text: "7")
                        .onTapGesture {

                            sevenIsSelected.toggle()
                            if sevenIsSelected {

                                if "7" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    print("wrong answer")
                                    showAlert.toggle()
                                }
                            }
                        }

                        ParentAuthButton(
                            isSelected: $eightIsSelected,
                            color: .gray,
                            text: "8")
                        .onTapGesture {

                            eightIsSelected.toggle()
                            if eightIsSelected {

                                if "8" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    print("wrong answer")
                                    showAlert.toggle()
                                }
                            }
                        }

                        ParentAuthButton(
                            isSelected: $nineIsSelected,
                            color: .gray,
                            text: "9")
                        .onTapGesture {

                            nineIsSelected.toggle()
                            if nineIsSelected {

                                if "9" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    print("wrong answer")
                                    showAlert.toggle()
                                }
                            }
                        }

                        ParentAuthButton(
                            isSelected: $zeroIsSelected,
                            color: .gray,
                            text: "0")
                        .onTapGesture {

                            zeroIsSelected.toggle()
                            if zeroIsSelected {

                                if "0" == randomEquation.key {
                                    print("correct answer")

                                    // ToDO: Go to Settings

                                } else {
                                    print("wrong answer")
                                    showAlert.toggle()
                                }
                            }
                        }
                    }.alert(alertText, isPresented: $showAlert) {
//                        oneIsSelected = false
//                        twoIsSelected = false
//                        threeIsSelected = false
//                        fourIsSelected = false
//                        fiveIsSelected = false
//                        sixIsSelected = false
//                        sevenIsSelected = false
//                        eightIsSelected = false
//                        nineIsSelected = false
//                        zeroIsSelected = false
//                        showAlert = false
                    }
                }.padding(20)
            }.overlay(alignment: .topTrailing) {
                close
                
                // TODO: Dismiss should save the last state of rows
            }
            .transition(.move(edge: .bottom))
        }
    }
}

struct ParentAuthView_Previews: PreviewProvider {
    static var previews: some View {
        ParentAuthView {}
    }
}

private extension ParentAuthView {
    
    var close: some View {
        Button {
            didClose()
        } label: {
            HStack {
                Spacer()
                Image(systemName: "xmark")
                    .symbolVariant(.circle.fill)
                    .font(
                        .system(size: 35,
                                weight: .bold,
                                design: .rounded)
                    )
                    .foregroundStyle(.gray.opacity(0.6))
                    .padding(8)
            }
        }
    }
    
    var background: some View {
        RoundedCorners(color: .white,
                       tl: 20,
                       tr: 20,
                       bl: 20,
                       br: 20)
        .shadow(color: .black.opacity(0.2),
                    radius: 3)
    }
}
