//
//  ViewController.swift
//  UserDefaults
//
//  Created by Kevin Tran on 5/29/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //connect objects from storyboard
    @IBOutlet var textField: UITextField!
    @IBOutlet var textLabel: UILabel!
    
    //create button action
    @IBAction func buttonPress(sender: UIButton) {
        //update label with textField.text
        textLabel.text = textField.text
        
        //save data with userDefaults
        UserDefaults.standard.set(textLabel.text, forKey: "textLabel")
        
        //clear text field
        textField.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //create viewDidAppear function
    override func viewDidAppear(_ animated: Bool) {
        //if userDefault exists -retrieve userDefault and cast as String
        if let k = UserDefaults.standard.object(forKey: "textLabel") as? String {
            
            //assign optional binding constant to label
            textLabel.text = k
        }
    }
}

