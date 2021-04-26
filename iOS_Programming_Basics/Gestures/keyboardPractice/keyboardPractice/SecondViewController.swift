//
//  SecondViewController.swift
//  keyboardPractice
//
//  Created by Kevin Tran on 8/3/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var txtFld: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        txtFld.resignFirstResponder()
    }

}
