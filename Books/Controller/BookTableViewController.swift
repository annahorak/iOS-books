//
//  RestaurantTableViewController.swift
//  FoodPin2
//
//  Created by Anna Horak on 20.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {

    
    var resources: [LibraryObject] = []
    var shoppingBagPrice: Double = 0.00

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = resources[0].category

        tableView.separatorStyle = .none
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return resources.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BookTableViewCell
            
        cell.titleLabel.text = resources[indexPath.row].title
        cell.titleLabel.numberOfLines = 0

        cell.priceLabel.text = String(format: "%.02f zł", resources[indexPath.row].price)
        cell.authorLabel.text  = resources[indexPath.row].author
        cell.thumbailImageView.image = UIImage(named: resources[indexPath.row].image)
    
        //cell.heartImageView.isHidden = bookIsInterested[indexPath.row] ? false : true
        return cell
    }
 


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBookDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! BookDetailViewController
                destinationController.resource = resources[indexPath.row]
            }
        }
        
    }

}
