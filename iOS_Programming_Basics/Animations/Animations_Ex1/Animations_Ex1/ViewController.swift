//
//  ViewController.swift
//  Animations_Ex1
//
//  Created by Kevin Tran on 8/6/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - Properties
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var showQButton: UIButton!
    @IBOutlet weak var hideQButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        questionLabel.alpha = 0
    }

    //MARK: - Functions
    func animateLabelTransitions() {
        //ANIMATE FUNCTION - ANONOMOUS CLOSURE
        UIView.animate(withDuration: 0.5) { 
            self.questionLabel.alpha = 1.0
        }
        showQButton.backgroundColor = UIColor.orange
    }
    
    func unanimateLabelTransitions() {
        //assign closure to constant and reference in animate method
        let dissolveAnimationClosure = { () -> Void in
            self.questionLabel.alpha = 0
        }
        
        //ANIMATION COMPLETION
        UIView.animate(withDuration: 0.5, delay: 0, options: [], animations: dissolveAnimationClosure, completion: {
             _ in
            self.showQButton.backgroundColor = UIColor.green
        })
        
    }
    
    //MARK: - Actions
    @IBAction func showQButton(_ sender: UIButton) {
        animateLabelTransitions()
    }
    
    @IBAction func hideQButton(_ sender: UIButton) {
        unanimateLabelTransitions()
    }
    
}//end of ViewController

