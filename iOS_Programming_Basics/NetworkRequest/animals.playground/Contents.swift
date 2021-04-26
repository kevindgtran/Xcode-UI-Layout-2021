//
//  animals.playground
//  iOS Networking
//
//  Created by Jarrod Parkes on 09/30/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation

/* Path for JSON files bundled with the Playground */
var pathForAnimalsJSON = Bundle.main.path(forResource: "animals", ofType: "json")

/* Raw JSON data (...simliar to the format you might receive from the network) */
var rawAnimalsJSON = try? Data(contentsOf: URL(fileURLWithPath: pathForAnimalsJSON!))

/* Error object */
var parsingAnimalsError: NSError? = nil

/* Parse the data into usable form */
var parsedAnimalsJSON = try! JSONSerialization.jsonObject(with: rawAnimalsJSON!, options: .allowFragments) as! NSDictionary

func parseJSONAsDictionary(_ dictionary: NSDictionary) {
    //print(dictionary)
    
    guard let parsedPhotos = dictionary["photos"] as? [String: AnyObject] else {
        print("error with parsedPhoto")
        return
    }
    //print(parsedPhotos)
    
    guard let parsedPerpage = parsedPhotos["perpage"] as? String else {
        print("error with parsedPerpage")
        return
    }
    //print(parsedPerpage)

    guard let parsedPages = parsedPhotos["pages"] as? Int else {
        print("error with parsedPages")
        return
    }
    //print(parsedPages)
    
    guard let parsedPhoto = parsedPhotos["photo"] as? [[String: AnyObject]] else {
        print("error with parsedPhoto")
        return
    }
    
    guard let firstPhoto = parsedPhoto[0] as? [String: AnyObject] else {
        print("error with firstPhoto")
        return
    }
    //print(firstPhoto)
    
    guard let firstPhotoID = firstPhoto["id"] as? String else {
        print("error with firstPhotoID")
        return
    }
    //print(firstPhotoID)
}

parseJSONAsDictionary(parsedAnimalsJSON)
