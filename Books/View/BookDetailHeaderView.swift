//
//  BookDetailHeaderView.swift
//  Books
//
//  Created by Anna Horak on 23.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookDetailHeaderView: UIView {
    
        
    @IBOutlet var headerImageView: UIImageView!
    @IBOutlet var titleLabel: UILabel! {
        didSet {
                titleLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet var categoryLabel: UILabel! {
        didSet {
            categoryLabel.layer.cornerRadius = 5.0
            categoryLabel.layer.masksToBounds = true
        }
    }
    
    

    


}
