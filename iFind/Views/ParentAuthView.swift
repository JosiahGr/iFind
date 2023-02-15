//
//  ParentAuthView.swift
//  iFind
//
//  Created by Josiah Green on 2/15/23.
//

import SwiftUI

struct ParentAuthView: View {
    
    @EnvironmentObject var sheetManager: SheetManager
    
    @State private var answer = ""
    @State private var wrongAnswer = 0
    @State private var approved: Bool = false
    
    var equation = [6: "2 x 3 = ?", 7: "5 + 2 = ?", 4: "2 + 2 = ?"]

    
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
                        ParentAuthButton(num: "1")
                        ParentAuthButton(num: "2")
                        ParentAuthButton(num: "3")
                        ParentAuthButton(num: "4")
                        ParentAuthButton(num: "5")
                    }
                    
                    HStack {
                        ParentAuthButton(num: "6")
                        ParentAuthButton(num: "7")
                        ParentAuthButton(num: "8")
                        ParentAuthButton(num: "9")
                        ParentAuthButton(num: "0")
                        
                    }
                }
                    .padding(20)
                
                TextField("Answer", text: $answer)
                    .padding()
                    .frame(width: 280, height: 50)
                    .background(Color.black.opacity(0.05))
                    .cornerRadius(50)
                    .border(.red, width: CGFloat(wrongAnswer))
                
                Button("Submit") {
//                    authenticateParent(answer: answer)
                }
                .foregroundColor(.white)
                .frame(width: 280, height: 50)
                .background(Color.blue)
                .cornerRadius(50)
                
                NavigationLink(destination: Text("You are logged in")) {
                    PageView()
                }
                .hidden()
            }
        }
    }
    
//    func authenticateParent(answer: String) {
//        if answer.lowercased() != $answer {
//            wrongAnswer = 2
//        } else {
//            approved = true
//        }
//
//    }
}

struct ParentAuthView_Previews: PreviewProvider {
    static var previews: some View {
        ParentAuthView()
    }
}
