//
//  BagTableViewCell.swift
//  Books
//
//  Created by Anna Horak on 10.01.2018.
//  Copyright © 2018 Anna Horak. All rights reserved.
//

import UIKit

class BagTableViewCell: UITableViewCell {
    
    
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var authorLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var thumbailImageView: UIImageView!


    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
