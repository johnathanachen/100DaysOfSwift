//
//  ViewController.swift
//  Contact Profiles
//
//  Created by Johnathan Chen on 9/6/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.width/2
        imageView.layer.masksToBounds = true
        
    }

    // MARK: - Outlets
    @IBOutlet weak var imageView: UIImageView!
    

}

