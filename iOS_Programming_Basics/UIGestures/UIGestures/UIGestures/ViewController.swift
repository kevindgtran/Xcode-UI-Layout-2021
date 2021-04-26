//
//  ViewController.swift
//  UIGestures
//
//  Created by Kevin Tran on 4/17/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: properties
    @IBOutlet weak var yellowLabel: UILabel!
    @IBOutlet weak var redViewBox: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //create gesture instance of type UIPanGesture passing in 2 arguments, first being self == the view controller, second being the function called when pan gesture is enabled
        let gesture = UIPanGestureRecognizer(target: self, action: #selector(panningLabel))
        
        //add gesture to storyboard object
        redViewBox.addGestureRecognizer(gesture)
    }
    
    //create panning function taking in 1 argument being the UIPanGestureRecognizer, create the "point"/ location the user is panning on and set it to the center of the storyboard objects center
    func panningLabel(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        redViewBox.center = point
    }
    
    //MARK: actions
    //IBAction for swipe gesture on storyboard object - yellow label
    @IBAction func yellowLabelSwipeGesture(_ sender: Any) {
        print("swipe is working!")
        yellowLabel.text = "swiped!"
    }
}

