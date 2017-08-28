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
        createToolbar()
    }

    // MARK: - Outlets
    @IBOutlet weak var subtotalTextField: UITextField!
    @IBOutlet weak var tipPercentLabel: UILabel!
    
    // MARK: - Properties
    let model = Model()
    
    // MARK: - Interactions
    @IBAction func dragSlider(_ sender: UISlider) {
        tipPercentLabel.text = "Tip (\(Int(sender.value))%):"
        
        
        print("\(Int(sender.value))")
    }
    
    // MARK: - Functions
    func createToolbar() {
        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        toolbar.sizeToFit()
        
        // create barbuttonitems
        let doneButton = UIBarButtonItem(
            barButtonSystemItem: .done,
            target: self,
            action: #selector(dismissKeyboard))
        
        let flexibleSpace = UIBarButtonItem(
            barButtonSystemItem: .flexibleSpace,
            target: self,
            action: nil)
        
        let rightSpace = UIBarButtonItem(
            barButtonSystemItem: .fixedSpace,
            target: self,
            action: nil)
        
        rightSpace.width = 12
        
        // add item to toolbar
        toolbar.setItems([flexibleSpace, doneButton, rightSpace], animated: true)
        
        // add toolbar to keyboard
        subtotalTextField.inputAccessoryView = toolbar
    }
    
    func dismissKeyboard() {
        subtotalTextField.resignFirstResponder()
        
        if subtotalTextField.text?.characters.count == 0 {
            subtotalTextField.text = "$0.00"
        } else {
            model.subtotalFromTextField = subtotalTextField.text!
            subtotalTextField.text = model.subtotalAsCurrency
        }
       
    }
}

