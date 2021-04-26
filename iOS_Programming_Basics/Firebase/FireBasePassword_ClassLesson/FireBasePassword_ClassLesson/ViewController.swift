//
//  ViewController.swift
//  FireBasePassword_ClassLesson
//
//  Created by Kevin Tran on 3/28/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController {

    @IBOutlet weak var emailTextLabel: UITextField!
    @IBOutlet weak var passwordTextLabel: UITextField!
    
    private var _authHandle: FIRAuthStateDidChangeListenerHandle!
    
    var user: FIRUser?
    
    func configureAuth() {
        _authHandle = FIRAuth.auth()?.addStateDidChangeListener({ (auth: FIRAuth, user: FIRUser?) in
            if user != nil {
                print(" CONFIGURATION : The user is being printed as: \(user?.email!)")
                print(" CONFIGURATION : The user is being printed as: \(user?.email!)")
                print(" CONFIGURATION : The user is being printed as: \(user?.email!)")
            }
        })
    }
    
    func deconfigureAuth() {
        
        FIRAuth.auth()?.removeStateDidChangeListener(_authHandle!)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        configureAuth()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(true)
        deconfigureAuth()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func login(_ sender: Any) {
        
        FIRAuth.auth()?.signIn(withEmail: emailTextLabel.text!, password: passwordTextLabel.text!) {
            (user, error) in
            
            if user != nil && error == nil {
                
                print("LOGIN : The user is logged in now as \(user?.email!)")
                print("LOGIN : The user is logged in now as \(user?.email!)")
                print("LOGIN : The user is logged in now as \(user?.email!)")
            } else {
                print("Here is the error: \(error)")
                print("Here is the user: \(user)")
            }
        }
    }
    
    @IBAction func signup(_ sender: Any) {
        
        let alert = UIAlertController(title: "Signup", message: "Sign up", preferredStyle: .alert)
        
        let saveAction = UIAlertAction(title: "Save", style: .default) { action in
            print("saving!")
            let emailField = alert.textFields![0]
            let passwordField = alert.textFields![1]
            
            
            FIRAuth.auth()?.createUser(withEmail: emailField.text!, password: passwordField.text!) { (user, error) in
                
                FIRAuth.auth()!.signIn(withEmail: self.emailTextLabel.text!, password: self.passwordTextLabel.text!)
            }
            
        }
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alert.addTextField { textEmail in
            textEmail.placeholder = "Enter your email"
        }
        
        alert.addTextField { textPassword in
            textPassword.isSecureTextEntry = true
            textPassword.placeholder = "Enter your password"
        }
        
        alert.addAction(saveAction)
        alert.addAction(cancelAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == emailTextLabel {
            emailTextLabel.becomeFirstResponder()
        }
        if textField == passwordTextLabel {
            passwordTextLabel.resignFirstResponder()
        }
        
        return true
    }

}


