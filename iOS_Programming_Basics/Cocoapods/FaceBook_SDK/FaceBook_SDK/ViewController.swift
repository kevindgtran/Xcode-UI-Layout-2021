//
//  ViewController.swift
//  FaceBook_SDK
//
//  Created by Kevin Tran on 3/27/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import FBSDKLoginKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        
        loginButton.readPermissions = ["public_profile", "email", "user_friends"]
        
        loginButton.center = view.center
        view.addSubview(loginButton)
    
        if let accessToken = FBSDKAccessToken.current() {
            print("im logged in")
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

