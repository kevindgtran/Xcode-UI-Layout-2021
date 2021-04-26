//
//  ViewController.swift
//  UserNotifications
//
//  Created by Kevin Tran on 6/20/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //after view loads, request authorization from the user
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge], completionHandler: {didAllow, error in
        })
    
    }
    
    
    @IBAction func action(_ sender: Any) {
        
    
    
    
    }//end of action


}//end of ViewController

