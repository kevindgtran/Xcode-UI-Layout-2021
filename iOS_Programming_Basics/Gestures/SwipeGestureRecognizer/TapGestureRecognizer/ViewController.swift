//
//  ViewController.swift
//  TapGestureRecognizer
//
//  Created by Kevin Tran on 8/21/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func swipeGestureRecognizer(_ sender: UISwipeGestureRecognizer) {
    
        print("swiped down")
    
    }
}

//added image to storyboard canvas
//added swipe gesture recognizer to viewController, specified in attributes inspector direction of swipe
//connected image to swipe
//connected gesture to viewController (action), with print statement in action body
