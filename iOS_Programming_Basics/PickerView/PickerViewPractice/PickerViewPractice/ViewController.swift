//
//  ViewController.swift
//  PickerViewPractice
//
//  Created by Kevin Tran on 5/19/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    let fruitList: [String] = ["Apples", "Oranges", "Bananas", "Strawberries", "Mango", "Blueberries", "Watermelon"]
    
    //MARK: - Properties
    @IBOutlet var chosenFruitLabel: UILabel!
    @IBOutlet var fruitPicker: UIPickerView!
    
    //methods tied to UIPickerView
    //number of components
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    //number of rows
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return fruitList.count
    }
    
    //title for each row
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return fruitList[row]
    }
    
    //(optional) - didselectRow
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        chosenFruitLabel.text = fruitList[row]
    }
    
    override func viewDidLoad() {
    chosenFruitLabel.text = fruitList[0]
    }
}

