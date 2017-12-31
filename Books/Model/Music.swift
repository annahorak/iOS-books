//
//  Music.swift
//  Books
//
//  Created by Anna Horak on 31.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import Foundation

class Music {
    var title: String
    var author: String
    var price: Double
    var image: String
    var description: String
    var musicPlay: String
    
    init(title: String, author: String, description: String, price: Double, image: String, musicPlay: String) {
        self.title = title
        self.author = author
        self.price = price
        self.image = image
        self.description = description
        self.musicPlay = musicPlay
    }
    
    convenience init() {
        self.init(title: "", author: "", description: "", price: 0.00, image: "", musicPlay: "")
    }
}
