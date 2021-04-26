//
//  ViewController.swift
//  PerformSegue
//
//  Created by Kevin Tran on 4/23/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //create manual segue from button to second view controller
    
    //create outlet for textfield
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //pass data entered into textField and segue to second view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        //create destination for to second controller
        let destViewController : SecondViewController = segue.destination as! SecondViewController
        //update the information on the next viewcontroller
        destViewController.updatedLabel = textField.text!
    }
}

