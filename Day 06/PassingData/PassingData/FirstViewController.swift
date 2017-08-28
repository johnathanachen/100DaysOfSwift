//
//  ViewController.swift
//  PassingData
//
//  Created by Johnathan Chen on 8/28/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
     
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    override func prepare(for seque: UIStoryboardSegue, sender: Any?) {
        sentMessage = textView.text
    }

}

