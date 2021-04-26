//
//  GreenViewController.swift
//  UIGestureRecognizer
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class GreenViewController: UIViewController {
    
    override func viewDidLoad() {
        //create new instance of UISwipeGestureRecognizer called rightSwipe, target, #selector function - swipeaction
        let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        
        //call direction on new UISwipeGestureRecognizer instance of type right
        rightSwipe.direction = UISwipeGestureRecognizerDirection.right
        
        //addGesture rightSwipe to self.view
        self.view.addGestureRecognizer(rightSwipe)
        
    }
}
