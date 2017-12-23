//
//  RestaurantTableViewController.swift
//  FoodPin2
//
//  Created by Anna Horak on 20.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookTableViewController: UITableViewController {

    var book1Titles = ["A", "B", "C"]
    var book1Images = ["padthai", "sushi", "burger"]
    var book1Authors = ["a","b","c"]
    
    
    var book2Titles = ["D", "E", "F"]
    var book2Images = [UIImage(named: "padthai"), UIImage(named: "sushi"), UIImage(named: "burger")]
    var book2Authors = ["a","b","c"]
    
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
        return book1Titles.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "Cell"
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! BookTableViewCell
        
        cell.nameLabel.text = book1Titles[indexPath.row]
        cell.typeLabel.text = book1Authors[indexPath.row]
        cell.locationLabel.text = "Wrocław"
        cell.thumbailImageView.image = UIImage(named: book1Images[indexPath.row]) 
        
        cell.heartImageView.isHidden = bookIsInterested[indexPath.row] ? false : true
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
                destinationController.bookImageName = book1Images[indexPath.row]
//                destinationController.restaurantName = restaurantNames[indexPath.row]
//                destinationController.restaurantType = restaurantTypes[indexPath.row]
//                destinationController.restaurantLocation = restaurantLocations[indexPath.row]
            }
        }
    }

}
