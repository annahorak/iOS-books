//
//  ShoppingBagViewCell.swift
//  Books
//
//  Created by Anna Horak on 29.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class ShoppingBagViewCell: UITableViewCell {
    
    @IBOutlet var bagButton: UIButton!
    @IBOutlet var shoppingBagLabel: UILabel! {
        didSet {
            shoppingBagLabel.numberOfLines = 0
        }
    }
    
    @IBAction func clicked(_ sender: Any) {
        shoppingBagLabel.text = "text"
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

