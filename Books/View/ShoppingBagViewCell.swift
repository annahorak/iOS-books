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
        
        guard let shoppingBag = shoppingBagLabel.text else { print(10); return}

        let current = Double(shoppingBag)
        let new: Double = current! + 1.00

        shoppingBagLabel.text = String(format: "%.02f", new)
        
        
        
//        let current : Double = Double(shoppingBagLabel.text)!
//        let new: Double = current + 1.00
        
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

