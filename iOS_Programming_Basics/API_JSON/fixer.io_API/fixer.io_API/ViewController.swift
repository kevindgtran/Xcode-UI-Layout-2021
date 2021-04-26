//
//  ViewController.swift
//  fixer.io_API
//
//  Created by Kevin Tran on 3/26/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //1. url
        //2. URLSession
        //3. Array
        //4. Dictionary
        //5. Subscript Dictionary - example is of one dictionary and parsing another dictionary inside of it!

        //step 1 - get url, create task, URLSession and get back data, response, error
        let url = URL(string: "http://api.fixer.io/latest")
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("error creating URLSession")
            } else {
                if let fixerData = data {
                    //step 2 - turn into data into Array using JSONSerialization
                    do {
                        let fixerJsonData = try JSONSerialization.jsonObject(with: fixerData, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                            //print to view data, (App transport to allow arbitrary loads)
                            //print(fixerJsonData)
                        
                        //convert to Dictionary that we can work with (outer most layer)
                        if let ratesData = fixerJsonData["rates"] as? NSDictionary {
                            //print all JSON data
                            //print(ratesData)
                            
                            //extract just one line from JSON data (parse data)
                            if let AUDdata = ratesData["AUD"] {
                                print(AUDdata)
                            }
                        }
                    } catch {
                      //print error if one
                    }
                }
            }
        }
        //step 3 task.resume
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

