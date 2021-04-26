//
//  ViewController.swift
//  DelegatePractice
//
//  Created by Kevin Tran on 3/29/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //created whitelist!
    
    //creating a delegate
    //used to send data back and fourth view to view
    //implement the newly created method
    

    //closure
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //open channel
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? SomeViewController {
            destination.delegate = self
        }
    }



}



//extend ViewController to conform to SomeVC
extension ViewController: SomeViewControllerDelegate {

    func sendData(string: String) {
        print("candy! \(string)")
    }
}

