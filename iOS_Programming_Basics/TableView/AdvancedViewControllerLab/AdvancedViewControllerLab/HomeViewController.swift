//
//  HomeViewController.swift
//  AdvancedViewControllerLab
//
//  Created by Kevin Tran on 3/27/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    //var mainMenu = [FoodCategories]()
    
    //how to grab instance from class???
    let mainMenu = [
        FoodCategories(title: "Burger", image: UIImage(named: "Burger-9")!),
        FoodCategories(title: "Sandwiches", image: UIImage(named: "Sandwhich-Cover")!),
        FoodCategories(title: "Salads", image: UIImage(named: "Salad-Cover")!)
    ]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
   }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mainMenu.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath) as! HomeTableViewCell
        
        let cellTitle = self.mainMenu[indexPath.row].title
        cell.foodCategoriesLabel.text = cellTitle
        
        let cellImage = self.mainMenu[indexPath.row].image
        cell.foodCategoriesImage.image = cellImage
        
        return cell
        
    }
}
