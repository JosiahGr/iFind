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
    
    
    @State private var isSelected = false
    @State private var showAlert = false
    @State private var alerText = ""
    
    @State private var answer = ""
    
    var equation = ["6": "2 x 3 = ?", "7": "5 + 2 = ?", "4": "2 + 2 = ?"]
    
    
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
                            isSelected: $isSelected,
                            color: .gray,
                            text: "1")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "1" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings

                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "2")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "2" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "3")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "3" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "4")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "4" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "5")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "5" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    isSelected.toggle()
                                    print("wrong answer")
                                }
                            }
                        }
                    }
                    
                    HStack {
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "6")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {
                                
                                if "6" == randomEquation.key {
                                    
                                    // ToDO: Go to Settings
                                    
                                    print("correct answer")
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "7")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "7" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "8")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "8" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "9")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "9" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                        
                        ParentAuthButton(
                            isSelected: $isSelected,
                            color: .gray,
                            text: "0")
                        .onTapGesture {
                            
                            isSelected.toggle()
                            if isSelected {

                                if "0" == randomEquation.key {
                                    print("correct answer")
                                    
                                    // ToDO: Go to Settings
                                    
                                } else {
                                    print("wrong answer")
                                }
                            }
                        }
                    }
                }
                .padding(20)
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
