//
//  BookDetailViewController.swift
//  Books
//
//  Created by Anna Horak on 23.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate  {

    // MARK: - Properties
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: BookDetailHeaderView!
        
    var resource: LibraryObject = LibraryObject()
    
    // MARK: - View controller life style
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = resource.title
        navigationItem.largeTitleDisplayMode = .never

        // Configure the table view
        tableView.separatorStyle = .none
        
        // Configure header view
        headerView.headerImageView.image = UIImage(named: resource.image)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - UITableViewDataSource methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailShortTextTableViewCell.self), for: indexPath) as! BookDetailShortTextTableViewCell
            cell.iconImageView.image = UIImage(named: "author")
            cell.shortTextLabel.text = resource.title + " - " + resource.author
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailShortTextTableViewCell.self), for: indexPath) as! BookDetailShortTextTableViewCell
            cell.iconImageView.image = UIImage(named: "price")
            cell.shortTextLabel.text = String(format: "%.02f zł", resource.price)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailDescriptionTableViewCell.self), for: indexPath) as! BookDetailDescriptionTableViewCell
            cell.descriptionLabel.text = resource.description
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: ShoppingBagViewCell.self), for: indexPath) as! ShoppingBagViewCell
            cell.price.text = String(format: "%.02f zł", Data.shoppingBagPrice)
            return cell
            
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "addToBag" {
            _ = segue.destination as! PopUpViewController
                Data.resourcesInBag.append(resource)
                Data.shoppingBagPrice = Data.shoppingBagPrice + resource.price
 
                self.tableView.reloadData()
        }
        
        if segue.identifier == "showShoppingBag" {
            let destinationController = segue.destination as! ShoppingBagViewController
            destinationController.resources = Data.resourcesInBag

        }
    
    }
}
