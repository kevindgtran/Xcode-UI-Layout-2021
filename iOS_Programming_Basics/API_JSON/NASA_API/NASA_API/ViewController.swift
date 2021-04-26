//
//  ViewController.swift
//  NASA_API
//
//  Created by Kevin Tran on 3/26/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //step 1. url
        //step 2. create task (URLSession)
        //step 3. convert to Array (do catch)
        //step 4. convert to Dictionary (NSDictionary) - example is only one dictionary/ object
        
        
    
    //STEP 1 - Get API key, create constant with url and key
        let url = URL(string: "https://api.nasa.gov/planetary/apod?api_key=l0DImrwZHSPw9jQSK09ozGwyRFrLtbia9ruWk4Ik")
    
    //STEP 2 - Create Task (double click on response)
        // We'll get 3 variables returned, data, response, error
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            //if error print error
            if error != nil {
                print("error")
            } else {
                //else put returing data into a constant
                if let nasaContent = data {
                   //convert data into ARRAY in a do catch (to catch any errors with the json)
                    do {
                        let nasaJson = try JSONSerialization.jsonObject(with: nasaContent, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        //allow App transport, allow arbitrary loads in the plist
                        //test data is rendering in the console
                        print(nasaJson)
                        
                        //Now turn JSON into a dictionary
                        if let results = nasaJson as? NSDictionary {
                            //put dictionary key into constants of data we want
                            
                            //if let explanation = results["explanation"] {
                            ////test data is rendering just explanation data
                            //print(explanation)
                            //}
                            
                            //if let date = results["date"] {
                                //print(date)
                            //}
                        }
                    }
                    catch {
                    }
                }
            }
        }
    //STEP 3 - start the task
    task.resume()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

