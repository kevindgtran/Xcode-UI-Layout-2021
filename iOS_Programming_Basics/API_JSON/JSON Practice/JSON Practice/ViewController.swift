//
//  ViewController.swift
//  JSON Practice
//
//  Created by Kevin Tran on 5/30/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
  
        //create constant with url string
        //create task, with error and data
        //with data do-catch
        //jsonserialization with data
        //subscript data and print
        //task resume
        
        let url = URL(string: "https://papapurees.herokuapp.com/api/recipes")
        
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("error")
            } else {
                if let content = data {
                    do {
                        let json = try JSONSerialization.jsonObject(with: content, options: []) as AnyObject
                        if let recipeList = json["recipesList"] as? [[String: Any]] {
                            for item in recipeList {
                                if let recipe = item["title"] as? String {
                                    print(recipe)
                                }//end of if let recipe
                            }//end of for loop
                        }//end of if let recipeList
                    }//end of do statement
                catch {
                        
                    }//end of catch
                }//end of if let statement
            }//end of else
        }//end of task
        
        task.resume()
        
    }//end of viewDidLoad
}//end of viewController Class
