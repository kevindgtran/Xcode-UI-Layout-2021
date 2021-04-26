//
//  ViewController.swift
//  UIGestureRecognizer
//
//  Created by Kevin Tran on 5/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

//import UIKit framework 
import UIKit

//new instance of UIViewController called ViewController
class ViewController: UIViewController {

    //viewDidLoad function
    override func viewDidLoad() {
    
        //(listener to fire a function) - new instance of UISwipeGestureRecognizer, with target self, action #selector (function) with swipe parameter
        let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        
        //call direction metho on leftSwipe set to UISwipeGetureRecognizerDirection.left
        leftSwipe.direction = UISwipeGestureRecognizerDirection.left
        
        //addGestureRecognizer leftSwipe to self.view
        self.view.addGestureRecognizer(leftSwipe)
    
    }
}

//extend a function to both view controllers
extension UIViewController {
    func swipeAction(swipe: UISwipeGestureRecognizer) {
        
        //switch through both possible swipes
        switch swipe.direction.rawValue {
        case 1: //swipe left case
            performSegue(withIdentifier: "goRight", sender: self)
        case 2: //swipe right case
            performSegue(withIdentifier: "goLeft", sender: self)
        default:
            break
        }
    }
}
