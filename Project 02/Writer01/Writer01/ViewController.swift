//
//  ViewController.swift
//  Writer01
//
//  Created by Johnathan Chen on 8/26/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
        NotificationCenter.default.addObserver(self, selector: #selector(detectIfSettingsChanged), name: UserDefaults.didChangeNotification, object: nil)
    }

    // Mark: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Functions
    func detectIfSettingsChanged() {
        if UserDefaults.standard.bool(forKey: "nightMode") == true {
            view.backgroundColor = .black
            textView.textColor = .white
            textView.keyboardAppearance = .dark
            UIApplication.shared.statusBarStyle = .lightContent

        } else {
            view.backgroundColor = .white
            textView.textColor = .black
            textView.keyboardAppearance = .default
            UIApplication.shared.statusBarStyle = .default
        }
    }
}



















