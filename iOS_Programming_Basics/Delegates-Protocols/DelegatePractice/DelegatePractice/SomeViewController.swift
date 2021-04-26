//
//  SomeViewController.swift
//  DelegatePractice
//
//  Created by Kevin Tran on 3/29/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

//create protocal
protocol SomeViewControllerDelegate{
    //send information back
    //define only the "blueprint" aka name and parameters
    func sendData(string: String)
}


class SomeViewController: UIViewController {

    //create our delegate variable (name it delegate), from VC, make it optional as information "will" be sent
    var delegate: SomeViewControllerDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        sendCoolData()
    
    }
    
    func sendCoolData() {
        delegate?.sendData(string: "Richard is super cool...")
    }
    
    
    
    
}
