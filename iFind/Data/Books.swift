//
//  Books.swift
//  iFind
//
//  Created by Josiah Green on 2/9/23.
//
//
//import Foundation
//import SwiftUI
//import UIColorHexSwift
//
//class Book: ObservableObject, Identifiable {
//    
//    @Published var id = UUID().uuidString
//    @Published var title = ""
//    @Published var color = Color.orange
//    
//    init() {
//    }
//    
//    var hasBeenAdded: Bool {
//        let book = DataController.shared.book.first { (book) -> Bool in
//            return book.id == self.id
//        }
//        if book != nil {
//            return true
//        } else {
//            return false
//        }
//    }
//}
//
//
//var testBook1: Book {
//    let book = Book()
//    let _ = Image("animal_container")
//    
//    book.title = "Animals"
//    book.color = .orange
//    
//    return book
//}
//
//var testBook2: Book {
//    let book = Book()
//    let _ = Image("animal_wallpaper")
//    
//    book.title = "Automobiles"
//    book.color = .purple
//    
//    return book
//}
//
//var testBook3: Book {
//    let book = Book()
//    let _ = Image("bookshelfView_wallpaper")
//    
//    book.title = "Frogs"
//    book.color = .green
//    
//    return book
//}
