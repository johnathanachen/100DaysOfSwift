//
//  GroceriesTableViewController.swift
//  BasicTableView
//
//  Created by Johnathan Chen on 9/3/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import UIKit

class GroceriesTableViewController: UITableViewController {
    
    // MARK: - View Did Load
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Properties
    var groceries = ["Milk", "Apples", "Ham", "Eggs"]

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceries.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = groceries[indexPath.row]

        return cell
    }


}
