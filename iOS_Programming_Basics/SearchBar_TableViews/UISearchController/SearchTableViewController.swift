//
//  SearchTableViewController.swift
//  UISearchController
//
//  Created by Kevin Tran on 3/22/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SearchTableViewController: UITableViewController, UISearchResultsUpdating {
    
    //1. add UISearchResultsUpdating delegate (above)
    //2. create array of elements to search, emtpy array, resultsSearchController = UISearchController()
    //3. add searchbar to top of tableview
    //4. setup cell
    //5. UISearch delegate method
    
    //STEP 2 - setup
    let fruit = ["apple", "banana", "zucchini"]
    var filteredFruits = [String]()
    var resultSearchController = UISearchController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //STEP 3 - Add search bar to top of table view
        self.resultSearchController = UISearchController(searchResultsController: nil)
        self.resultSearchController.searchResultsUpdater = self
        self.resultSearchController.dimsBackgroundDuringPresentation = false
        self.resultSearchController.searchBar.sizeToFit()
        self.tableView.tableHeaderView = self.resultSearchController.searchBar
        self.tableView.reloadData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //STEP 3 - if using search return results else return origin list data
        if self.resultSearchController.isActive{
            return self.filteredFruits.count
        } else {
            return self.fruit.count
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //STEP 4 - setup cell information
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as UITableViewCell?
        if self.resultSearchController.isActive {
            cell!.textLabel?.text = self.filteredFruits[indexPath.row]
        } else {
            cell!.textLabel?.text = self.fruit[indexPath.row]
        }
        
        return cell!
    }
    
    //STEP 5 - uisearch delegate method
    func updateSearchResults(for searchController: UISearchController) {
        self.filteredFruits.removeAll()
        
        let searchPredicate = NSPredicate(format: "SELF CONTAINS[c] %@", searchController.searchBar.text!)
        
        let array = (self.fruit as NSArray).filtered(using: searchPredicate)
        
        self.filteredFruits = array as! [String]
        
        self.tableView.reloadData()
    }
}
