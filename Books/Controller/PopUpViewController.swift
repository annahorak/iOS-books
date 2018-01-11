//
//  PopUpViewController.swift
//  Books
//
//  Created by Anna Horak on 10.01.2018.
//  Copyright © 2018 Anna Horak. All rights reserved.
//

import UIKit

class PopUpViewController: UIViewController {
    
//    @IBOutlet weak var popUpView: PopUpView!
    @IBOutlet weak var bagLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        bagLabel.text = String(format: "%.02f", Data.shoppingBagPrice)
        
        Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    

}
