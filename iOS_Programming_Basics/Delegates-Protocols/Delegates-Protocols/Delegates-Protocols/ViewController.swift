//
//  ViewController.swift
//  Delegates-Protocols
//
//  Created by Kevin Tran on 10/16/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var SWLabel: UILabel!
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var chooseSideBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //on button press, present next viewcontroller
    @IBAction func chooseSideBtnPress(_ sender: UIButton) {
        //segue to view with ID "SelectionVC"
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let selectionViewController = storyBoard.instantiateViewController(withIdentifier: "SelectionVC") as! SelectionViewController
        //4.
        selectionViewController.ordersDelegate = self
        self.present(selectionViewController, animated: true, completion: nil)
    }
}

//5.
extension ViewController: listOfOrders {
    func makeTheseChanges(_ image: UIImage, _ backgroundColor: UIColor, _ name: String) {
        img.image = image
        label.text = name
        view.backgroundColor = backgroundColor
    }
}

//Delegates and Protocols setup
//Delegator (MGR)
//1. In the Delegator / "Manager" / decision maker VC, create our protocol (list of orders - functions)
//2. Assign the Protocol (list of orders) to a variable (will be given to an intern soon)
//3. On the "Manager actions", tell the delegatee (intern) to perform the protocol actions with these specifics

//Delegatee(Intern)
//4. In the Delegatee VC, get the ordersDelegate variable and set to self. This says "Hey Mgr! I will be your delegatee and follow your orders!"
//5. Delegates have to conform to the protocol == "Have to be an employee of the MGR to complete the commands (good to put into extension). State the function to complete and pass in the "order specifics" from the boss
