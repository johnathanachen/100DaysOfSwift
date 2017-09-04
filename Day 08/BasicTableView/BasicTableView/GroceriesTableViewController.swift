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
        
        self.navigationItem.leftBarButtonItem = self.editButtonItem
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: nil)
        self.refreshControl = pullToRefreashControl
        pullToRefreashControl.addTarget(self, action: #selector(refreshTable), for: .valueChanged)
    }

    // MARK: - Properties
    var data = ["Milk", "Apples", "Ham", "Eggs"]
    var cloudData = ["Pancakes", "Orange Juice", "Milk", "Apples", "Ham", "Waffles", "Eggs"]
    let pullToRefreashControl = UIRefreshControl()
    
    // MARK: - Functions
    @objc func refreshTable() {
        data = cloudData
        self.tableView.reloadData()
        pullToRefreashControl.endRefreshing()
    }

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "groceriesCell", for: indexPath)

        cell.textLabel?.text = data[indexPath.row]

        return cell
    }


}
