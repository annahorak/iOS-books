//
//  MusicDetailViewController.swift
//  Books
//
//  Created by Anna Horak on 31.12.2017.
//  Copyright © 2017 Anna Horak. All rights reserved.
//

import UIKit
import AVFoundation

class MusicDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var audioplayer : AVAudioPlayer!
    var isMusicPlaying : Bool = false
    
    func playSoundWith(fileName: String, fileExtension: String) -> Void {
        let audioSourceURL: URL!
        audioSourceURL = Bundle.main.url(forResource: fileName, withExtension: fileExtension)
        
        if audioSourceURL == nil {
            print("error")
        } else {
            do {
                audioplayer = try AVAudioPlayer.init(contentsOf: audioSourceURL!)
                audioplayer.prepareToPlay()
                audioplayer.play()
            } catch {
                print(error)
            }
        }
    }
    
    @IBOutlet weak var PlayButton: UIButton!
    
    @IBAction func playButton(_ sender: Any) {
        if !isMusicPlaying{
            playSoundWith(fileName: music.musicPlay, fileExtension: "mp3")
            isMusicPlaying = true
            PlayButton.setImage(UIImage(named: "pause"), for: .normal)
        }
        else{
            audioplayer.pause()
            isMusicPlaying = false
            PlayButton.setImage(UIImage(named: "play"), for: .normal)
        }
        
    }

    // MARK: - Properties
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var headerView: BookDetailHeaderView!
    
    var bag : Double = 0.00
    var music: LibraryObject = LibraryObject()
    
    // MARK: - View controller life style
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = music.title

        navigationItem.largeTitleDisplayMode = .never
        
        // Configure the table view
//        tableView.delegate = self
//        tableView.dataSource = self
        tableView.separatorStyle = .none
        
        // Configure header view
//        headerView.titleLabel.text = music.title
        headerView.headerImageView.image = UIImage(named: music.image)
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
        return 4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        switch indexPath.row {
            
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailShortTextTableViewCell.self), for: indexPath) as! BookDetailShortTextTableViewCell
            cell.iconImageView.image = UIImage(named: "author")
            cell.shortTextLabel.text = music.author + " - \"" + music.title + "\""
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailShortTextTableViewCell.self), for: indexPath) as! BookDetailShortTextTableViewCell
            cell.iconImageView.image = UIImage(named: "price")
            cell.shortTextLabel.text = String(format: "%.02f zł", music.price)
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: String(describing: BookDetailDescriptionTableViewCell.self), for: indexPath) as! BookDetailDescriptionTableViewCell
            cell.descriptionLabel.text = music.description
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
            Data.resourcesInBag.append(music)
            Data.shoppingBagPrice = Data.shoppingBagPrice + music.price
            self.tableView.reloadData()
        }
        
        if segue.identifier == "showShoppingBag" {
            let destinationController = segue.destination as! ShoppingBagViewController
            destinationController.resources = Data.resourcesInBag
            if isMusicPlaying {
                audioplayer.stop()
                PlayButton.setImage(UIImage(named: "play"), for: .normal)
                isMusicPlaying = false
            }
            

        }
        
    }
    
}


