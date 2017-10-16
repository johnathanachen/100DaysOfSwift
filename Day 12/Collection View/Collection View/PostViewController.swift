//
//  PostViewController.swift
//  Collection View
//
//  Created by Johnathan Chen on 10/16/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class PostViewController: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let indexPath = selectedIndex {
            let selectedRow = model.posts[indexPath.row]
            
            imageView.image = UIImage(named: model.posts[indexPath.row]["image"]!)
            likesLabel.text = "♥︎ \(selectedRow["likes"]!) likes"
            postLabel.text = selectedRow["description"]
            tagsLabel.text = selectedRow["tags"]
            title = selectedRow["title"]
        }
    }
    
    // MARK: - Properties
    var selectedIndex: IndexPath?

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var likesLabel: UILabel!
    @IBOutlet weak var postLabel: UILabel!
    @IBOutlet weak var tagsLabel: UILabel!
    
    // MARK: - Interactions
    @IBAction func tapOptionsButton(_ sender: UIBarButtonItem) {

        showActionSheet()
    }
    
    // MARK: - Functions
    func showAlert() {
        let alertController = UIAlertController(title: "Alert View", message: "Hello", preferredStyle: .alert)
        let confirm = UIAlertAction(title: "OK", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: nil)
        
        alertController.addAction(confirm)
        alertController.addAction(cancel)
        
        present(alertController, animated: true, completion: nil)
    }
    
    func showActionSheet() {
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let report = UIAlertAction(title: "Report", style: .destructive, handler: nil)
        let share = UIAlertAction(title: "Share", style: .default, handler: nil)
        let saveImage = UIAlertAction(title: "Save Image", style: .default, handler: nil)
        let copyLink = UIAlertAction(title: "Copy Link", style: .default, handler: nil)
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        let actions = [report, share, saveImage, copyLink, cancel]
        
        for action in actions {
            alertController.addAction(action)
        }
        
        
        present(alertController, animated: true, completion: nil)
    }
    
    
    
    

}
