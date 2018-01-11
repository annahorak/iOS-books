//
//  BookDetailShortTextTableViewCell.swift
//  Books
//
//  Created by Anna Horak on 23.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookDetailShortTextTableViewCell: UITableViewCell {

    
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var shortTextLabel: UILabel! {
        didSet {
            shortTextLabel.numberOfLines = 0
        }
    }
    
    @IBOutlet weak var myButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }

}
