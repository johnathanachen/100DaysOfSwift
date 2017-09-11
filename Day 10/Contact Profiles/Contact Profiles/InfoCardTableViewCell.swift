//
//  InfoCardTableViewCell.swift
//  Contact Profiles
//
//  Created by Johnathan Chen on 9/10/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class InfoCardTableViewCell: UITableViewCell {

    // MARK: - When Cell Loads
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }
    
    // MARK: - Outlets
    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var notesLabel: UILabel!
    


}
