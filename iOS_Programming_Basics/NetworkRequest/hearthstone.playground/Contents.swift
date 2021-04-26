//
//  hearthstone.playground
//  iOS Networking
//
//  Created by Jarrod Parkes on 09/30/15.
//  Copyright (c) 2015 Udacity. All rights reserved.
//

import Foundation

/* Path for JSON files bundled with the Playground */
var pathForHearthstoneJSON = Bundle.main.path(forResource: "hearthstone", ofType: "json")

/* Raw JSON data (...simliar to the format you might receive from the network) */
var rawHearthstoneJSON = try? Data(contentsOf: URL(fileURLWithPath: pathForHearthstoneJSON!))

/* Error object */
var parsingHearthstoneError: NSError? = nil

/* Parse the data into usable form */
var parsedHearthstoneJSON = try! JSONSerialization.jsonObject(with: rawHearthstoneJSON!, options: .allowFragments) as! NSDictionary

func parseJSONAsDictionary(_ dictionary: NSDictionary) {
    
    guard let parsedBasic = dictionary["Basic"] as? [[String: AnyObject]] else {
        print("error with parsedBasic")
        return
    }
    
    var minionCost5Count = Int()
    var durability2Count = Int()
    var battleCryInTextCount = Int()
    var totalCommonCost = Float()
    var totalCommonCount = Float()
    var minionAttackPoints = Float()
    var minionHealthPoints = Float()
    var minionCostPoints = Float()
    var costRatio = Float()
    
//    for object in parsedBasic {
//        guard let parsedObject = object as? [String: AnyObject] else {
//            print("error with parsedObject")
//            return
//        }
    
//average ratio
//        guard let minionType = parsedObject["type"] as? String else {
//            print("error with minionType")
//            return
//        }
//        
//        if minionType == "Minion", parsedObject["cost"] != nil {
//            guard let minionHealth = parsedObject["health"] as? Float, let minionAttack = parsedObject["attack"] as? Float, let minionCost = parsedObject["cost"] as? Float else {
//                print("error with minionHealth or minionAttack")
//                return
//            }
//            minionAttackPoints += minionAttack
//            minionHealthPoints += minionHealth
//            minionCostPoints += minionCost
//            costRatio += 1
//        }

//average cost
//        if parsedObject["type"] != nil {
//            guard let parsedType = parsedObject["type"] as? String else {
//                print("error with parsedType")
//                return
//            }
//            if parsedType == "Minion" {
//                if parsedObject["rarity"] != nil {
//                    guard let parsedRarity = parsedObject["rarity"] as? String else {
//                        print("error with parsedRarity")
//                        return
//                    }
//                    if parsedRarity == "Common", parsedObject["cost"] != nil {
//                        guard let parsedCommonCost = parsedObject["cost"] as? Float else {
//                            print("error with parsedCommonCost")
//                            return
//                        }
//                        totalCommonCost += parsedCommonCost
//                        totalCommonCount += 1.0
//                    }
//                }
//            }
//        }
        
        
//number of minions that cost 5
//        if parsedObject["type"] != nil {
//            guard let minionType = parsedObject["type"] as? String else {
//                print("error with minionType")
//                return
//            }
//            
//            if minionType == "Minion" {
//                if parsedObject["cost"] != nil {
//                    guard let minionCost = parsedObject["cost"] as? Int else {
//                        print("error with minionCost")
//                        return
//                    }
//                    
//                    if minionCost == 5 {
//                        minionCost5Count += 1
//                    }
//                }
//            }
//        }
        
    
//number of minions whos durability == 2
//        if parsedObject["durability"] != nil {
//            guard let parsedDurability = parsedObject["durability"] as? Int else {
//                print("error with parsedDurability")
//                return
//            }
//            
//            if parsedDurability == 2 {
//                durability2Count += 1
//            }
//        }

//        if parsedObject["text"] != nil {
//            guard let parsedText = parsedObject["text"] as? String else {
//                print("error with parsedText")
//                return
//            }
//        
//            if parsedText.contains("Battlecry") {
//                battleCryInTextCount += 1
//            }
//        }
        
    //}//end of for loop

    //print(minionCost5Count)
    //print(durability2Count)
    //print(battleCryInTextCount)
    //print(totalCommonCost/totalCommonCount)
    //print(((minionHealthPoints + minionAttackPoints) / minionCostPoints) / costRatio)

}//end of parseJSONAsDictionary function

parseJSONAsDictionary(parsedHearthstoneJSON)
