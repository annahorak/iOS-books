//
//  BookDetailViewController.swift
//  Books
//
//  Created by Anna Horak on 23.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit

class BookDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


    // MARK: - Properties
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: BookDetailHeaderView!
    
    var book: Book = Book()
    
    // MARK: - View controller life style
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        // Configure the table view
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        // Configure header view
        headerView.titleLabel.text = book.title
        headerView.categoryLabel.text = book.category
        headerView.headerImageView.image = UIImage(named: book.image)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - UITableViewDataSource methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailShortTextTableViewCell.self), for: indexPath) as! BookDetailShortTextTableViewCell
            cell.iconImageView.image = UIImage(named: "author")
            cell.shortTextLabel.text = book.author
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailShortTextTableViewCell.self), for: indexPath) as! BookDetailShortTextTableViewCell
            cell.iconImageView.image = UIImage(named: "price")
            cell.shortTextLabel.text = "Ania"
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailDescriptionTableViewCell.self), for: indexPath) as! BookDetailDescriptionTableViewCell
            cell.descriptionLabel.text = book.description
            
            return cell
            
        default:
            fatalError("Failed to instantiate the table view cell for detail view controller")
        }
    }
    
    
    
    
//    @IBOutlet var bookImageView: UIImageView!
//    @IBOutlet var bookTitle: UILabel!
//    @IBOutlet var bookAuthor: UILabel!
//    @IBOutlet var bookPrice: UILabel!
//    @IBOutlet var bookDescription: UILabel!
//
//    var book: Book = Book()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        bookImageView.image = UIImage(named: book.image)
//        bookTitle.text = book.title
//        bookAuthor.text = book.author
//        bookDescription.text = book.description
//       // bookPrice.text = book.price
//
//        navigationItem.largeTitleDisplayMode = .never
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//
//
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destinationViewController.
//        // Pass the selected object to the new view controller.
//    }
//    */

}
