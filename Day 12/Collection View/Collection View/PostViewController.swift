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
            likesLabel.text = selectedRow["likes"]
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
    

}
