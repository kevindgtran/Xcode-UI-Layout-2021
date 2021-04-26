//
//  ViewController.swift
//  Celebrities_API_TableView
//
//  Created by Kevin Tran on 3/26/17.
//  Copyright © 2017 com.example. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    //1. get url
    //2. create task with URLSession
    //3. create array with JSONSerialization
    //4. create dictionary with NSDictionary
    //5. task.resume
    //6. create tableview, cell, connect table, outlets and 3 func's for UITableView
    //7. create array of UIOutlets needed from tableViewCell
    //8. PARSE DATA into arrays
    //9. Customize cell with parsed data and arrays
    
    
    @IBOutlet weak var CelebrityTableView: UITableView!
    
    //7. create tableView
    var celebrityNamesArray = [String]()
    var celebrityDobArray = [String]()
    var celebrityImageArray = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //1. get url
        let url = URL(string: "http://microblogging.wingnity.com/JSONParsingTutorial/jsonActors")
        
        //2. task, create URLSession
        let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
            if error != nil {
                print("error with URLSession")
            } else {
                if let celebrityData = data {
                    //3. turn into an array using JSONSerialization in do catch
                    do {
                        let celebrityJsonData = try JSONSerialization.jsonObject(with: celebrityData, options: JSONSerialization.ReadingOptions.mutableContainers) as AnyObject
                        //print(celebrityData)
                        
                        //4. turn array into BIG array of dictionaries
                        if let parsedCelebrityJsonData = celebrityJsonData["actors"] as? [[String : Any]] {
                            print(parsedCelebrityJsonData)
                            
                            //8. create an array constant, casted as an array
                            if let celebrityArray = celebrityJsonData.value(forKey: "actors") as? NSArray {
                                //loop through newly created array
                                for actor in celebrityArray {
                                    //assign a constant, if value == "name" key then append to array
                                    if let actorDict = actor as? NSDictionary {
                                        if let name = actorDict.value(forKey: "name") {
                                            self.celebrityNamesArray.append(name as! String)
                                        }
                                        
                                        if let dob = actorDict.value(forKey: "dob") {
                                            self.celebrityDobArray.append(dob as! String)
                                        }
                                        
                                        if let image = actorDict.value(forKey: "image") {
                                            self.celebrityImageArray.append(image as! String)
                                        }
                                        //reload tableview back on main thread
                                        DispatchQueue.main.async {
                                            self.CelebrityTableView.reloadData()
                                        }
                                    }
                                }
                            }
                        }
                    } catch {
                        print("error with JSONSerialization")
                    }
                }
            }
        }
        //5. task.resume()
        task.resume()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return celebrityNamesArray.count
    }
    
    //9. Customize cell with parsed data and arrays
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = CelebrityTableView.dequeueReusableCell(withIdentifier: "cell1") as? CelebrityTableViewCell
        //update IBOutlets with arrays
        cell?.CelebrityName.text = celebrityNamesArray[indexPath.row]
        cell?.CelebrityDob.text = celebrityDobArray[indexPath.row]
        
        //convert image string into NSURL
        let imgURL = NSURL(string: celebrityImageArray[indexPath.row])
        if imgURL != nil {
            let data = NSData(contentsOf: (imgURL as? URL)!)
            cell?.CelebrityImage.image = UIImage(data: data as! Data)
        }
        return cell!
    }
}

