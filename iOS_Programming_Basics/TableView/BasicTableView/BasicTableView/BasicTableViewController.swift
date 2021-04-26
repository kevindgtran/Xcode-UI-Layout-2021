//
//  BasicTableViewController.swift
//  BasicTableView
//
//  Created by Kevin Tran on 2/8/18.
//  Copyright © 2018 com.example. All rights reserved.
//

import UIKit

class BasicTableViewController: UITableViewController {

    let numbers: [String] = ["One", "Two", "Three", "Four", "Five", "Six", "Seven"]

    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath) as UITableViewCell
        cell.textLabel?.text = numbers[indexPath.row]
        return cell
    }
}
