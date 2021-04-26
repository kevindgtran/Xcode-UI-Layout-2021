//
//  ViewController.swift
//  TouchIDAuthentication
//
//  Created by Kevin Tran on 6/1/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import LocalAuthentication //import localAuthentication module

class ViewController: UIViewController {
    
    @IBOutlet weak var tryAgainLabel: UILabel!
    @IBOutlet weak var restrictedLabel: UILabel!
    @IBOutlet weak var requiredLabel: UILabel!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var fingerAuthenticationLabel: UIButton!
    @IBAction func fingerAuthenticationButton(_ sender: Any) {
        
        //create instance of LAContext()
        let context = LAContext()
        
        //check if user device has finger print authentication, LAPolicy, deviceOwnerAuthWithBiometrics
        //canEvaluatePolicy = prompts user for interaction authentication
        //LAPolicy (enum) = authentication using touch ID
        //deviceOwnerAuthenticationWithBiometrics (case) = Touch ID or password is required
        if context.canEvaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, error: nil) {
            //on success - ask for permission
            context.evaluatePolicy(LAPolicy.deviceOwnerAuthenticationWithBiometrics, localizedReason: "TouchID authentication needed.", reply: { (isSuccessful, error) in
                //on success execute code
                if isSuccessful {
                    //put back onto main thread to speed up load time
                    DispatchQueue.main.async {
                        self.restrictedLabel.isHidden = true
                        self.requiredLabel.isHidden = true
                        self.welcomeLabel.isHidden = false
                        self.fingerAuthenticationLabel.isHidden = true
                        self.signOutLabel.isHidden = false
                        self.tryAgainLabel.isHidden = true
                    }
                    print("successfully logged in")
                    
                }//end of if successful
                else {
                    //else ask user to try again
                    DispatchQueue.main.async {
                        self.tryAgainLabel.isHidden = false
                    }
                    print("unsuccessfully logged in")
                }//end of else
            })//end of sucessful closure
        }//end of if context.canEvaluate if statment
    }//end of button action
    
    @IBOutlet weak var signOutLabel: UIButton!
    
    @IBAction func signOutButton(_ sender: Any) {
        signOutLabel.isHidden = true
        tryAgainLabel.isHidden = true
        welcomeLabel.isHidden = true
        restrictedLabel.isHidden = false
        requiredLabel.isHidden = false
        fingerAuthenticationLabel.isHidden = false
    }//end of signOutButton
    
    override func viewDidLoad() {
        super.viewDidLoad()
        signOutLabel.isHidden = true
        tryAgainLabel.isHidden = true
        welcomeLabel.isHidden = true
        
    }//end of viewDidload
}//end of ViewController class

