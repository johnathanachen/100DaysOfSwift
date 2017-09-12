//
//  ViewController.swift
//  Picture Gallery
//
//  Created by Johnathan Chen on 9/11/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class LocationPhotoViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        textView.inputAccessoryView = toolbar
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet var toolbar: UIView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var selectedImageView: UIImageView!
    
    // MARK: - Interactions
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
    }
    @IBAction func tapCameraButton(_ sender: UIButton) {
    }
    


}
