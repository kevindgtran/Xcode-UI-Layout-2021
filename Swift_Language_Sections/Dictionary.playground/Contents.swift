import UIKit

//NOTES: dctionaries return an optional

//create empty dictionary
//var newDictionary: [String : Int]?
//newDictionary = ["Ray" : 200, "Kevin" : 150, "Richard" : 180]

//access the keys value
//if let newDictionary = newDictionary {
//    print(newDictionary["Kevin"]!)
//}

//update and add a key/value
//func addToDictionary(word: [String: Int]?) {
//    guard var word = word else { return }
//        word["Peter"] = 0
//        print(word)
//}
//addToDictionary(word: newDictionary)

//iterate through, print all then only the keys
//func loopThroughDictionary(word: [String : Int]?) {
//    guard let word = word else { return }
//        for (key, value) in word {
//            print("\(key) : \(value)")
//        }
//}
//loopThroughDictionary(word: newDictionary)


//var someDictionary: [String: String]?
//someDictionary = ["name" : "Bob"]
//if let someDictionary = someDictionary {
//    print(someDictionary)
//}

//var listOfMovies: [String: Int]?
//listOfMovies = [
//    "Terminator" : 4,
//    "Toy Story" : 3,
//    "Forest Gump" : 4,
//    "Cinderella Man" : 4
//]

//optional unwrapping, subscripting a dictionary
//if let listOfMovies = listOfMovies {
//    if let score = listOfMovies["Terminator"] {
//        print("Terminator was a \(score) out of 5")
//    }
//    if let score = listOfMovies["Toy Story"] {
//        print("Toy Story was a \(score) out of 5")
//    }
//}

//update a dictionary
//listOfMovies?.updateValue(5, forKey: "Cinderella Man")
//print(listOfMovies)

//adding a value to a dictionary
//type(of:listOfMovies)
//listOfMovies?["Death Race"] = 1
//print(listOfMovies)

//Removing values from a dictionary
//listOfMovies?.removeValue(forKey: "Cinderella Man")
//print(listOfMovies)

//looping through a dictionary
//func loopDictionary(word: [String: Int]?) {
//    guard let word = word else { return }
//        for (key, value) in word {
//            print("key: \(key), value: \(value)")
//        }
//}
//
//loopDictionary(word: listOfMovies)


//print just the keys of a dictionary
//var newDictionary: [String: String]?
//newDictionary = [
//    "userName" : "Bob123",
//    "password" : "password",
//    "address" : "123 pine st",
//    "image" : "urlimage.pdf"
//]
//
//var pumpkin = [String]()
//func returnKeysOfDictionary(someDictionary: [String: String]?) -> [String] {
//    guard let thisDictionary = someDictionary else { return ["no dictionary entered"] }
//    for keyValue in thisDictionary.keys {
//      pumpkin.append(keyValue)
//    }
//    return pumpkin
//}
//
//returnKeysOfDictionary(someDictionary: newDictionary)


//var newDictionary = ["ticket1" : 1,
//                     "ticket2" : 2,
//                     "ticket3" : 3]
//
//for (key, value) in newDictionary {
//    print("key: \(key), value: \(value)")
//}
//
//newDictionary.updateValue(3, forKey: "newTicket3")
//print(newDictionary)
