//
//  ViewController.swift
//  Timer
//
//  Created by Kevin Tran on 6/7/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //timer variable
    var time = 0
    
    //new instance of Timer() class
    var timer = Timer()
    
    //MARK: - Properties
    @IBOutlet weak var lbl: UILabel!
    
    //MARK: - Actions
    @IBAction func startButton(_ sender: UIButton) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.action), userInfo: nil, repeats: true)
    }
    
    @IBAction func pauseButton(_ sender: UIButton) {
        //exit the timer class run loop with the invalidate method
        timer.invalidate()
    }
    
    @IBAction func resetButton(_ sender: UIButton) {
        //exit the timer class run loop with the invalidate method
        timer.invalidate()
        //reset time to 0
        time = 0
        //reset label text to time
        lbl.text = "\(time)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        lbl.text = "\(time)"
    }//end of viewDidLoad
    
    func action() {
        //add 1 to time variable
        time += 1
        
        //update label with new time
        lbl.text = "\(time)"
        
    }//end of action function
    
}//end of ViewController

