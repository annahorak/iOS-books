//
//  ShoppingBagViewController.swift
//  Books
//
//  Created by Anna Horak on 10.01.2018.
//  Copyright © 2018 Anna Horak. All rights reserved.
//

import UIKit

class ShoppingBagViewController: UITableViewController {

    public var books: [Book] = []

    @IBOutlet weak var allPrice: UILabel!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell2"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BagTableViewCell

        cell.titleLabel.text = books[indexPath.row].title
        cell.titleLabel.numberOfLines = 0

        cell.priceLabel.text = String(format: "%.02f zł", books[indexPath.row].price)
        cell.authorLabel.text  = books[indexPath.row].author
        cell.thumbailImageView.image = UIImage(named: books[indexPath.row].image)

        allPrice.text = String(format: "%.02f zł", Data.shoppingBagPrice)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let deleteAction = UIContextualAction(style: .destructive, title: "Delete") { (action, sourceView, completionHandler) in
            // Delete the row from the data source
            self.books.remove(at: indexPath.row)
            Data.shoppingBagPrice = Data.shoppingBagPrice - Data.booksInBag[indexPath.row].price
            Data.booksInBag.remove(at: indexPath.row)
            self.allPrice.text = String(format: "%.02f zł", Data.shoppingBagPrice)
            self.tableView.deleteRows(at: [indexPath], with: .fade)
            
            // Call completion handler with true to indicate
            completionHandler(true)
        }
        
        // Customize the action buttons
        deleteAction.backgroundColor = UIColor(red: 231.0/255.0, green: 76.0/255.0, blue: 60.0/255.0, alpha: 1.0)
        deleteAction.image = UIImage(named: "delete")
        
        let swipeConfiguration = UISwipeActionsConfiguration(actions: [deleteAction])
        
        return swipeConfiguration
    }

}
