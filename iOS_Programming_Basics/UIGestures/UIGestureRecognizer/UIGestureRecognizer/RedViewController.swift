//
//  RedViewController.swift
//  UIGestureRecognizer
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create UISwipeGesture listener
        let userSwipeRight = UISwipeGestureRecognizer(target: self, action: #selector(swipingUpToYellow(swiped:)))
        
        //set direction
        userSwipeRight.direction = UISwipeGestureRecognizerDirection.up
        
        //add listener to view
        self.view.addGestureRecognizer(userSwipeRight)
    }
    
    //function to perform when UISwipeGesture is activated
    func swipingUpToYellow(swiped: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "showYellowVC", sender: self)
    }
    
}
