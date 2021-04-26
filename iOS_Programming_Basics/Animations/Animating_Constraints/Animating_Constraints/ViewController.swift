//
//  ViewController.swift
//  Animating_Constraints
//
//  Created by Kevin Tran on 8/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var marioConstraintX: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateOffScreenLabel()
    }

    //MARK: - Functions
    func updateOffScreenLabel() {
        let screenWidth = view.bounds.width
        marioConstraintX.constant -= screenWidth
    }
    
    
    //MARK: - Actions
    @IBAction func enterMarioButton(_ sender: UIButton) {
        let screenFrameWidth = view.bounds.width
        UIView.animate(withDuration: 1.0, delay: 0, options: .curveEaseOut, animations: {
            self.marioConstraintX.constant += screenFrameWidth
            self.view.layoutIfNeeded()
        }, completion: { _ in
            self.updateOffScreenLabel()
        })
    }

}

