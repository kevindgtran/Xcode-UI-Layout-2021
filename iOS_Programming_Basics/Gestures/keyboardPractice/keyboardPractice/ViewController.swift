//
//  ViewController.swift
//  keyboardPractice
//
//  Created by Kevin Tran on 6/24/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //step 1
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        
        textField.resignFirstResponder()
        
    }

}

