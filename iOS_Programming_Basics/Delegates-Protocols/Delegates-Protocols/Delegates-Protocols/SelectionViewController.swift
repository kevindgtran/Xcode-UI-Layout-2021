//
//  SelectionViewController.swift
//  Delegates-Protocols
//
//  Created by Kevin Tran on 10/16/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

//1.
protocol listOfOrders {
    func makeTheseChanges(_ image: UIImage, _ backgroundColor: UIColor, _ name: String)
}

class SelectionViewController: UIViewController {
    //2.
    var ordersDelegate: listOfOrders!
    
    //MARK: - Properties
    @IBOutlet weak var imperialBtn: UIButton!
    @IBOutlet weak var rebelBtn: UIButton!
    @IBOutlet weak var chooseSideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - Actions
    @IBAction func imperialBtnPress(_ sender: UIButton) {
        //3.
        ordersDelegate.makeTheseChanges(UIImage(named: "Darth Vader")!, UIColor.red, "Darth Vador")
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func RebelBtnPress(_ sender: UIButton) {
        ordersDelegate.makeTheseChanges(UIImage(named: "Luke Skywalker")!, UIColor.cyan, "Luke Skywalker")
        dismiss(animated: true, completion: nil)
    }
}


//Delegates and Protocols setup
//Delegator (MGR)
//1. In the Delegator / "Manager" / decision maker VC, create our protocol (list of orders - functions)
//2. Assign the Protocol (list of orders) to a variable (will be given to an intern soon)
//3. On the "Manager's actions", tell the delegatee (intern) to perform the protocol actions with these specifics

//Delegatee(Intern)
//4. In the Delegatee VC, get the ordersDelegate variable and set to self. This says "Hey Mgr! I will be your delegatee and follow your orders!"
//5. Delegates have to conform to the protocol == "Have to be an employee of the MGR to complete the commands (good to put into extension). State the function to complete and pass in the "order specifics" from the boss
