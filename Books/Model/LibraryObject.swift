//
//  LibraryObject.swift
//  Books
//
//  Created by Anna Horak on 11.01.2018.
//  Copyright © 2018 Anna Horak. All rights reserved.
//

import Foundation

class LibraryObject {
    var title: String
    var author: String
    var price: Double
    var category: String
    var image: String
    var description: String
    var musicPlay: String
    
    init(title: String, author: String, category: String, description: String, price: Double, image: String, musicPlay: String) {
        self.title = title
        self.author = author
        self.category = category
        self.price = price
        self.image = image
        self.description = description
        self.musicPlay = musicPlay
    }
    
    convenience init() {
        self.init(title: "", author: "", category: "", description: "", price: 0.00, image: "", musicPlay: "")
    }
}
