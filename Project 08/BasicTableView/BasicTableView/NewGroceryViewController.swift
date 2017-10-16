//
//  NewGroceryViewController.swift
//  BasicTableView
//
//  Created by Johnathan Chen on 9/4/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class NewGroceryViewController: UIViewController {

    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
        textView.becomeFirstResponder()
    }

    // MARK: - Outlets
    @IBOutlet weak var textView: UITextView!
    
    // MARK: - Interactions
    @IBAction func tapDoneButton(_ sender: UIBarButtonItem) {
        
        if textView.text.characters.count > 0 {
            model.data.append(textView.text)
        }

        let _ =  navigationController?.popToRootViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
