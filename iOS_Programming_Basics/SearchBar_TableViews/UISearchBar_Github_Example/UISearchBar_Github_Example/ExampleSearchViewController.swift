//
//  ExampleSearchViewController.swift
//  UISearchBar_Github_Example
//
//  Created by Kevin Tran on 3/26/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ExampleSearchViewController: UIViewController, UISearchBarDelegate, UITableViewDataSource {
    
    @IBOutlet weak var exTitleLabel: UILabel!
    @IBOutlet weak var exTableView: UITableView!
    @IBOutlet weak var exSearchBar: UISearchBar!
    
    let data = ["New York, NY", "Los Angeles, CA", "Chicago, IL", "Houston, TX",
                "Philadelphia, PA", "Phoenix, AZ", "San Diego, CA", "San Antonio, TX",
                "Dallas, TX", "Detroit, MI", "San Jose, CA", "Indianapolis, IN",
                "Jacksonville, FL", "San Francisco, CA", "Columbus, OH", "Austin, TX",
                "Memphis, TN", "Baltimore, MD", "Charlotte, ND", "Fort Worth, TX"]
    
    var filteredData: [String]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exTitleLabel.layer.cornerRadius = CGFloat(13.0)

        exTableView.dataSource = self
        exSearchBar.delegate = self
        filteredData = data
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = exTableView.dequeueReusableCell(withIdentifier: "TableCell", for: indexPath) as! ExampleTableViewCell
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = searchText.isEmpty ? data : data.filter { (item: String) -> Bool in
            return item.range(of: searchText, options: .caseInsensitive, range: nil, locale: nil) != nil
        }
        
        exTableView.reloadData()
    }
    
}
