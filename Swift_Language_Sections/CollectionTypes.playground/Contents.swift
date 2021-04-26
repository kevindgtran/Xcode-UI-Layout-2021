import UIKit

//DEFINITION: Collection types hold multiple values together in a single variable. There are different collection types


//ARRAY: Arrays hold multiple values of the same type (type specific), they are ordered starting at index 0, arrays have lots of methods/ properties
//var exampleArray = ["zero", "one", "two", "three"]
//exampleArray[0]
//exampleArray.append("four")
//print(exampleArray)
//exampleArray.remove(at: 0)
//print(exampleArray)


//DICTIONARY: Dictionaries hold a collection of information in key values (keys OR values have to be the same). Dictionaries are not ordered but are subscripted by key to access their values
//var person1 = ["name" : "bob", "height" : "6ft", "isCool" : "yes"]
//person1.popFirst()
//person1.updateValue("9", forKey: "shoeSize")
//print(person1)


//SET: Sets hold information of the same type (type specific), no defined ordering
//var exampleSet: Set = ["example", "of", "set", "collection"]
//print(exampleSet)


//TUPLE: Tuple is a collection of random types, because of random types and swift being a type safe language, tuples have limited properties
//var exampleTuple = ("name", true, 123)
//exampleTuple.0
//exampleTuple.1
//exampleTuple.2


//30 ARRAY EXAMPLES
//declared variable of an array that holds strings
//var bucketList: Array <String> = ["climb mt. everest"]
//var bucketList = ["climb mt. everest"]
//bucketList.append("hot air ballon")
//bucketList.append("ironman")
//bucketList.append("build house")
//print(bucketList)
//bucketList.remove(at: 0)
//print(bucketList)
//bucketList.removeLast()
//bucketList.count
//bucketList.insert("fly", at: 0)
//bucketList.append("world record")
//bucketList[0]
//bucketList[0...2]
////add and update to an array element
//bucketList[0] += " a plane"
//bucketList[2] = "finish ironman"

//var goals: Array<String>
//var friends: Array<String>
//var studentGrades: Array<String>
//var flowerTypes: Array<String>
//var weights: Array<Int>

//array declaration and initilization
//var declaredArray: [String]
//var declaredAndInitialized = [String]()
//var emptyStringArray = [String]()
//var emptyIntArray = [Int]()
//var basketOfFruit = [String]()
//var groupOfNumbers = [Int]()
//var emptyBoolArray = [Bool]()
//emptyBoolArray.isEmpty
//var emptyDoubleArray = [Double]()
//emptyDoubleArray.isEmpty
//type(of:emptyDoubleArray)

//var repeatGreeting = Array(repeating: "Hello there", count: 3)
//var repeatStatement = Array(repeating: "Good morning", count: 2)
//var expression = Array(repeating: "oh yea!", count: 3)
//var numbersOne = Array(repeating: "one", count: 2)
//var numbersTwo = Array(repeating: "two", count: 2)
//var allNumbers = numbersOne + numbersTwo
//var favFruit = Array(repeating: "Apples", count: 3)
//var typeOfArray: [Int] = [1,2,3]
//var typeOfArray: [String] = ["hello", "there", "Kevin"]
//var typeOfArray: [Bool] = [true, false, true]
//var typeOfArray: [Double] = [1.2, 3.4, 5.6]
//var fruitList: [String] = ["Apples", "Oranges"]
//var response = "we have \(fruitList.count) fruits"
//var tableStuff: [String] = ["Laptop", "Coffee"]
//tableStuff.append("water bottle")
//print(tableStuff)
//type(of:tableStuff)
//tableStuff += ["apple"]
//var list: [String] = ["shoes", "socks", "pants"]
//list.append("belt")
//print(list)
//var numbers: [Int] = [1,2,3]
//numbers.append(4)
//print(numbers)
//numbers.remove(at: 0)
//print(numbers)
//numbers.removeFirst()
//print(numbers)
//numbers.removeLast()
//print(numbers)

//var exampleArray: [Int] = [1,2,3]
//for num in exampleArray {
//    print(num)
//}
//var list: [String] = ["Kevin", "Wes", "Scott"]
//for name in list {
//  print(name + "!")
//}

//var colors: [String] = ["Blue", "Red", "Yellow"]
//for color in [0...1] {
//    print(color)
//}

//var array1 = ["Scott", "Kevin", "Wes"]
//var array2: [Double] = []
//var array3: [Int] = []
//var array4: [Float] = []
//
//var mountRushmore: [String] = ["Thomas Jefferson", "George Washington", "Theodore Roosevelt", "Abraham Lincoln"]
//mountRushmore.append("Kanye")
//mountRushmore.remove(at: 0)
//print(mountRushmore)
//
//var names: [String] = ["Scott", "Kevin", "Wes"]
//for name in names {
//    print("hello \(name)!")
//}

//var array1: [Int] = [8, 13, 19, 7]
//var array2: [Int] = [2, 26]
//for num in array1 {
//    array2.append(num)
//}
//print(array2)

//var names: [String] = ["Wes", "Scott", "Joy", "David", "Ella", "Prathi", "Vibhas", "TJ"]
//var future = " is going to be a great iOS developer!!!"
//
//for name in names {
//    print(name + future)
//}

//var lapTimes = [42.6, 58.3, 33.7, 84.5]
//let sortedTimes = lapTimes.sorted { (first, second) -> Bool in
//    if first < second {
//        return true
//    } else {
//        return false
//    }
//}
//print(sortedTimes)


//30 DICTIONARY EXAMPLES
//declaration, .count, subscripting, read all, looping, converting keys/values to array
//var coatCheck = [Int:String]()
//coatCheck = [1: "Black Northface", 2: "Blue Old Navy Sweater", 3: "Brown Blazer"]
//coatCheck.count
//var myJacket = coatCheck[1]; print("My jacket is the \(myJacket!)")
//print(coatCheck)
//for (ticketNumber,coatDescription) in coatCheck {
//    print("Coatcheck Number: \(ticketNumber) is the \(coatDescription)")
//}
//var coatCheckKeysToArray = [Int]()
//for coatCheckKeys in coatCheck.keys {
//    coatCheckKeysToArray.append(coatCheckKeys)
//}
//print(coatCheckKeysToArray)
//
//var coatCheckValuesToArray = [String]()
//for coatCheckValues in coatCheck.values {
//    coatCheckValuesToArray.append(coatCheckValues)
//}
//print(coatCheckValuesToArray)

//var cityPopulation = [String:Int]()
//cityPopulation = [
//    "Tokyo, Japan": 37_833_000,
//    "Dehli, India": 24_953_000,
//    "Shanghai, China": 22_991_000
//]
//cityPopulation.count
//var largestPopulation = cityPopulation["Tokyo, Japan"]; print("Tokyo, Japan has the largest population with \(cityPopulation["Tokyo, Japan"]!)")
//print(cityPopulation)
//for (cityName, totalPopulation) in cityPopulation {
//    print("\(cityName) has a population of \(totalPopulation)")
//}
//var cityPopulationKeysToArray = [String]()
//for destinationCity in cityPopulation.keys {
//    cityPopulationKeysToArray.append(destinationCity)
//}
//print(cityPopulationKeysToArray)
//
//var cityPopulationValuesToArray = [Int]()
//for populationSize in cityPopulation.values {
//    cityPopulationValuesToArray.append(populationSize)
//}
//print(cityPopulationValuesToArray)
//
//var planetSizes = [String: String]()
//planetSizes = ["Jupitor": "142,800 km", "Saturn": "120,660 km", "Uranus": "51,118 km"]
//planetSizes.count
//var smallestPlanet = planetSizes["Uranus"]; print("Uranus is only \(planetSizes["Uranus"]!) in diameter")
//print(planetSizes)
//var planetSizesKeysToArray = [String]()
//var planetSizesValuesToArray = [String]()
//for (planetName, diameterOfPlanet) in planetSizes {
//    print("\(planetName) has a diameter of \(diameterOfPlanet)")
//    planetSizesKeysToArray.append(planetName)
//    planetSizesValuesToArray.append(diameterOfPlanet)
//}
//print(planetSizesKeysToArray)
//print(planetSizesValuesToArray)

var bucketList: [String]?
bucketList = ["build house"]
bucketList?.append("summit a mountain")
bucketList?[1] += "new thing!"


if let bucketList = bucketList {
    print(bucketList.joined(separator: ""))
}








