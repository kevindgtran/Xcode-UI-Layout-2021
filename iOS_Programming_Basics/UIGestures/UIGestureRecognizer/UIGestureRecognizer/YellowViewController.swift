//
//  YellowViewController.swift
//  UIGestureRecognizer
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class YellowViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //UISwipeGesture Listener
        let userSwipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(swipingUpToRed(swiped:)))
        
        //direction
        userSwipeLeft.direction = UISwipeGestureRecognizerDirection.up
        
        //add to view
        self.view.addGestureRecognizer(userSwipeLeft)
    }
    
    func swipingUpToRed(swiped: UISwipeGestureRecognizer) {
        performSegue(withIdentifier: "ShowRedVC", sender: self)
    }
}

