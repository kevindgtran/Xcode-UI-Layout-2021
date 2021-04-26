//
//  SecondViewController.swift
//  PerformSegue
//
//  Created by Kevin Tran on 4/23/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    //outlet for text label
    @IBOutlet weak var textLabel: UILabel!
    //temp variable to recieve the data
    var updatedLabel = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //upon view load, update the textlabel's text
        textLabel.text = updatedLabel
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
