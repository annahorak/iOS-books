//
//  Book.swift
//  Books
//
//  Created by Anna Horak on 23.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import Foundation

class Book {
    var title: String
    var author: String
    var price: Double
    var category: String
    var image: String
    
    init(title: String, author: String, category: String, price: Double, image: String) {
        self.title = title
        self.author = author
        self.category = category
        self.price = price
        self.image = image
    }
    
    convenience init() {
        self.init(title: "", author: "", category: "", price: 0.0, image: "")
    }
}
