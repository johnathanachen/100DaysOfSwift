//
//  TimelineTableViewCell.swift
//  Picture Gallery
//
//  Created by Johnathan Chen on 9/17/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class TimelineTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layoutIfNeeded()
        selectedImageView.layer.cornerRadius = selectedImageView.frame.width * 0.1
        selectedImageView.layer.masksToBounds = true
    }
    
    // MARK: - Outlets
    @IBOutlet weak var selectedImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var entryLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
}
