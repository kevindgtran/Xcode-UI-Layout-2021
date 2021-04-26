//
//  achievements.playground
//  iOS Networking
//
//  Created by Jarrod Parkes on 09/30/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation

/* Path for JSON files bundled with the Playground */
var pathForAchievementsJSON = Bundle.main.path(forResource: "achievements", ofType: "json")

/* Raw JSON data (...simliar to the format you might receive from the network) */
var rawAchievementsJSON = try? Data(contentsOf: URL(fileURLWithPath: pathForAchievementsJSON!))

/* Error object */
var parsingAchivementsError: NSError? = nil

/* Parse the data into usable form */
var parsedAchievementsJSON = try! JSONSerialization.jsonObject(with: rawAchievementsJSON!, options: .allowFragments) as! NSDictionary

func parseJSONAsDictionary(_ dictionary: NSDictionary) {

    var pointsGreaterThan10 = Int()
    var totalAchievementPoints = Float()
    var numberOfAchievements = Float()
    var categoryDictionary = [String: Double]()
    var categoryChildrenList = [Double]()
    var belongToMatchMaking = 0
    
   //loop through all achievements, subscript key "categoryId" cast as Double, assign categoryID value to a tempCategoryID, then loop through categories, subscript key "title" cast as an array of [String: AnyObjects], loop through array and subscript for "title" and cast as String, if value == "MatchMaking", subscript "children" cast as an array of [[String: AnyObject]], subscript "categoryID" cast as Double, if value == tempCategoryID, then add 1 to belongToMatchMaking variable
    
//    guard let parsedCategories = dictionary["categories"] as? [[String: AnyObject]] else {
//            print("error with parsedCategories")
//            return
//        }
//        
//        for categories in parsedCategories {
//            
//            guard let parsedCategoriesTitle = categories["title"] as? String else {
//                print("error with parsedCategoriesTitle")
//                return
//            }
//            
//            if parsedCategoriesTitle == "Matchmaking" {
//                
//                guard let matchmakingChildren = categories["children"] as? [[String: AnyObject]] else {
//                    print("error with matchmakingChildren")
//                    return
//                }
//                
//                for child in matchmakingChildren {
//                
//                guard let childrenCategoryId = child["categoryId"] as? Double else {
//                    print("error with childrenCategoryId")
//                    return
//                }
//                
//                categoryChildrenList.append(childrenCategoryId)
//
//                }
//            }
//        }
//    
//    guard let parsedAchievements = dictionary["achievements"] as? [[String: AnyObject]] else {
//        print("error with parsed Achievements")
//        return
//    }
//    
//    for achievement in parsedAchievements {
//        
//        guard let parsedAchievementCategoryID = achievement["categoryId"] as? Double else {
//            print("error with parsedAchievementCategoryID")
//            return
//        }
//        let tempAchievementCategoryId = parsedAchievementCategoryID
//        
//        for x in categoryChildrenList {
//            if tempAchievementCategoryId == x {
//                belongToMatchMaking += 1
//            }
//        }
//    }//end of achievement loop
//    print(belongToMatchMaking)
    
    
//    guard let parsedData = dictionary["achievements"] as? [[String: AnyObject]] else {
//        print("error with parsedData")
//        return
//    }
//    
//    for parsedAchievementObject in parsedData {
    
        //Cool Running Title
//        guard let achievementTitle = parsedAchievementObject["title"] as? String else {
//            print("error with achievementTitle")
//            return
//        }
//        if achievementTitle == "Cool Running" {
//            guard let achievementDescription = parsedAchievementObject["description"] as? String else {
//                print("error with achievementDescription")
//                return
//            }
//            print("Mission: \(achievementDescription) To achieve the \"\(achievementTitle)\" title")
//        }
        
        
        //average Achievement points
//        guard let achievementPoints = parsedAchievementObject["points"] as? Float else {
//            print("error with achievementPoints")
//            return
//        }
//        
//        totalAchievementPoints += achievementPoints
//        numberOfAchievements += 1
        
        //Achievement points greater than 10
//        guard let parsedDataPoints = parsedAchievementObject["points"] as? Int else {
//            print("error with parsedDataPoints")
//            return
//        }
//        if parsedDataPoints > 10 {
//            pointsGreaterThan10 += 1
//        }
        
    //}//end of parsedAchievementObject loop

    //print(round(totalAchievementPoints/numberOfAchievements * 100.0) / 100.0)
    //print(pointsGreaterThan10)
}//end of parseJSONAsDictionary function

parseJSONAsDictionary(parsedAchievementsJSON)
