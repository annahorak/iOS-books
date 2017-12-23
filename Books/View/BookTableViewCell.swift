//
//  RestaurantTableViewCell.swift
//  FoodPin2
//
//  Created by Anna Horak on 20.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var typeLabel: UILabel!
    @IBOutlet var thumbailImageView: UIImageView!// {
//        didSet {
//            thumbailImageView.layer.cornerRadius = 30.0
//            thumbailImageView.clipsToBounds = true
//        }
//    }
    
    @IBOutlet var heartImageView: UIImageView!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
//    func longPress() {
//        print("aaa")
//    }
}
