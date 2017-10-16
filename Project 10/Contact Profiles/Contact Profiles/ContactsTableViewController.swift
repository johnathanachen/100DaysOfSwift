//
//  ContactsTableViewController.swift
//  Contact Profiles
//
//  Created by Johnathan Chen on 9/9/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        switch section {
        case 0: return model.recent.count
        case 1: return model.friends.count
        default: return 0
        }
        
  
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath) as! PersonTableViewCell

        switch indexPath.section {
        case 0:
            cell.profileImageView.image = UIImage(named: model.recent[indexPath.row]["contactImage"]!)
            cell.nameLabel.text = model.recent[indexPath.row]["name"]
        case 1:
            cell.profileImageView.image = UIImage(named: model.friends[indexPath.row]["contactImage"]!)
            cell.nameLabel.text = model.friends[indexPath.row]["name"]
        default: break
        }

        return cell
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let cell = tableView.dequeueReusableCell(withIdentifier: "headerCell") as! HeaderTableViewCell
        
        switch section {
        case 0: cell.headerLabel.text = "RECENT"
        case 1: cell.headerLabel.text = "FRIENDS"
        default: break
        }
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "segueToInfoCard" {
            let destination = segue.destination as! InfoCardTableViewController
            destination.selectedIndexPath = tableView.indexPathForSelectedRow!
        }
    }


}
