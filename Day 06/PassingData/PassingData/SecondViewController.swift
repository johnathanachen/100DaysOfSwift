//
//  SecondViewController.swift
//  PassingData
//
//  Created by Johnathan Chen on 8/28/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

var sentMessage: String?

class SecondViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.text = sentMessage
    }
    
    // MARK: - Outlets
    @IBOutlet weak var messageLabel: UILabel!
    


}
