//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Johnathan Chen on 8/26/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        subtotalTextField.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var subtotalTextField: UITextField!
}

