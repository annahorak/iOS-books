//
//  RestaurantTableViewController.swift
//  FoodPin2
//
//  Created by Anna Horak on 20.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {

    
    var books:[Book] = [
        Book(title: "\"Rzeka tajemnic\"", author: "Dennis Lehane", category: "kryminalne", description: "", price: 36.90, image: "rzeka_tajemnic"),
        Book(title: "\"Czerwony smok\"", author: "Thomas Harris", category: "kryminalne", description: "", price: 29.90, image: "czerwony_smok"),
        Book(title: "\"Wyspa tajemnic\"", author: "Dennis Lehane", category: "kryminalne", description: "", price: 39.90, image: "wyspa_tajemnic"),
        Book(title: "\"Mężczyźni, którzy  nienawidzą kobiet\"", author: "Stieg Larsson", category: "kryminalne", description: "", price: 69.90, image: "mezczyzni"),
        Book(title: "\"Zaginiona dziewczyna\"", author: "Gillian Flynn", category: "kryminalne", description: "", price: 49.90, image: "zaginiona_dziewczyna"),
        Book(title: "\"Pan Mercedes\"", author: "Stephen King", category: "kryminalne", description: "", price: 69.90, image: "pan_mercedes"),
        Book(title: "\"Morderstwo w Orient Expressie\"", author: "Agatha Christie", category: "kryminalne", description: "", price: 29.90, image: "morderstwo"),
        ]

    
    var bookIsInterested = Array(repeating: false, count: 3)

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationController?.navigationBar.prefersLargeTitles = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // @objc Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
//        let longPressRecognizer = UILongPressGestureRecognizer(target: self, action: Selector("longPress:"))
//        self.view.addGestureRecognizer(longPressRecognizer)
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
        return books.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BookTableViewCell
        
        cell.titleLabel.text = books[indexPath.row].title
        //cell.typeLabel.text = books[indexPath.row].price
        cell.authorLabel.text  = books[indexPath.row].author
        cell.thumbailImageView.image = UIImage(named: books[indexPath.row].image)
        
        //cell.heartImageView.isHidden = bookIsInterested[indexPath.row] ? false : true
        return cell
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showBookDetails" {
            if let indexPath = tableView.indexPathForSelectedRow {
                let destinationController = segue.destination as! BookDetailViewController
                destinationController.book = books[indexPath.row]
            }
        }
    }

}
