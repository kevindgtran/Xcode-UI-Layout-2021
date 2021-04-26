//
//  SecondViewController.swift
//  PickerViewPractice
//
//  Created by Kevin Tran on 5/19/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    //array of expressions
    let emojiExpressions: [String] = ["Smiling", "Laughing", "Blushing", "Winking", "Love", "Studying", "Cool"]
    
    //array of emojis
    let emojiFaces: [String] = ["😀", "😂", "☺️", "😉", "😍", "🤓", "😎"]
    
    //properties
    @IBOutlet var emojiFace: UILabel!
    @IBOutlet var picker: UIPickerView!
    
    //UIPicker Methods
    //numberofcomponents
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //numberofrows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return emojiExpressions.count
    }
    
    //titleforrows
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return emojiExpressions[row]
    }
    
    //didselectrow
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        emojiFace.text = emojiFaces[row]
    }
    
    override func viewDidLoad() {
        //set default picker row
        emojiFace.text = emojiFaces[0]
    }
}
