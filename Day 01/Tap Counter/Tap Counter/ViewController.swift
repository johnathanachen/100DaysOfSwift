//
//  ViewController.swift
//  Tap Counter
//
//  Created by Johnathan Chen on 8/26/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
    super.viewDidLoad()

    }

    // MARK: Outlets
    @IBOutlet var countLabel: UILabel!

    // MARK: - Properties
    var count = 0

    // MARK: - Interactions
    @IBAction func tapCounter(_ sender: UIButton) {
        count = count + 1
        countLabel.text = String(count)
    }

    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0 
    }
  
}

