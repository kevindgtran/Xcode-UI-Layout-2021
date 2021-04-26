//
//  ViewController.swift
//  CoreData_Lesson
//
//  Created by Kevin Tran on 4/5/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //array
    var list = ["1. Entity", "2. Attributes", "3. Relationships"]

    //MARK: outlets
    @IBOutlet weak var MainTableView: UITableView!

    //MARK: actions
    @IBAction func addButtonPress(_ sender: Any) {
    }
    
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
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MainTableViewCell
        let row = indexPath.row
        cell.titleLabel.text = "\(list[row])"
        return cell
    }
}

