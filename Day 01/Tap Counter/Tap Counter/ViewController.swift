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
    self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
    self.navigationController?.navigationBar.shadowImage = UIImage()

    }

    // MARK: Outlets
    @IBOutlet var countLabel: UILabel!

    // MARK: - Properties
    var count = 0

    // MARK: - Interactions
    @IBAction func tapCounter(_ sender: UIButton) {
        increaseCount()
        print("tap counter")
    }

    @IBAction func tapResetButton(_ sender: UIBarButtonItem) {
        countLabel.text = "0"
        count = 0
    }
    
    @IBAction func longPressTapButton(_ sender: UILongPressGestureRecognizer) {
        increaseCount()
        print("longpress")
    }
    @IBAction func pressButtonDragInside(_ sender: UIButton) {
        increaseCount()
        print("touch drag inside")
    }
    @IBAction func touchButtonOutside(_ sender: UIButton) {
        increaseCount()
        print("touch outside")
    }
    @IBAction func touchButtonDragOutside(_ sender: UIButton) {
        increaseCount()
        print("touch drag outside")
    }



    // MARK: Functions
    func increaseCount() {
        count = count + 1
        countLabel.text = String(count)
    }
  
}











