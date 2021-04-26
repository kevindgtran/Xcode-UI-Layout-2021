import UIKit

//DEFINITION: variables/constants store data, which can then be used throughout the program.

//PLAYGROUND LAYOUT: Righthand side is what playground calculates. Bottom is the console, what the user sees

//COMMAND CLICK: Command clicking a variable/ constant will tell you what type it is
//var name = "bob" //type = String

//TYPES: Variables/ Constants are of different types, eg. Int = Whole #, Double = Decimal #, String = Collection of Characters, Bool = true/false, Array = ordered collection of same type, Set = random collection of the same types, Dictionary = collection type of key-value pairs, Tuple = collection of the sae type/ dictionary

//var exampleInt = 12
//type(of: exampleInt)
//var exampleDouble = 3.1415
//type(of: exampleDouble)
//var exampleString = "hello world"
//type(of: exampleString)
//var exampleBool = true
//type(of: exampleBool)
//var exampleArray = [1, 2, 3, 4]
//type(of: exampleArray)
//var exampleSet: Set = ["bob", "john", "mary", "jane"]
//type(of: exampleSet)
//var exampleDictionary = ["student1" : "john", "student2" : "mary", "student3" : "alfred"]
//type(of: exampleDictionary)
//var tupleExample = ("john", "doe")
//type(of: tupleExample)

//TYPE SAFETY: variables have to be of the same type in order to work together

//var one = 1
//var twoPointThree = 2.3
//var total = Double(one) + twoPointThree

//EXAMPLE: TIP CALCULATOR 
//var meal = 10
//var tip = 0.15
//var mealTotal = (Double(meal) * tip) + Double(meal)

//UPDATING A VARIABLE
//variableName = "updatedVariable"
//variableName += "addingAndUpdatingVariable"

//Examples: 30
//var x = 0, y = 2, w = "hello"
//let heart = "\u{2665}"
//var greeting: String = "Hello world"
//var word: String = "taco"
//var city: String = "Hillsdale"
//var transportation: String = "Train"
//var lunch: String = "spaghetti"
//var toy: String = "bike"
//var medicine: String = "advil"
//var book: String = "Swift Programming"
//var car: String = "Chevy Volt"
//var dogName: String = "Rufus"
//var bookStore: String = "Barnes & Noble"
//var restaurant: String = "The Counter"
//var beer: String = "Anderson Valley Boont"
//var gym: String = "24 hour fitness"
//var phone: String = "iphone"
//var shape: String = "box"
//var sportsTeam: String = "Worriors"
//var woodType: String = "Maple"
//var sound: String = "music"
//var carParts: String = "radiator"
//var tools: String = "screw driver"
//var ride: String = "lyft"
//var backpack: String = "north face"
//var benchColor: String = "blue"
//var jacketType: String = "blazer"
//var exercise: String = "yoga"
//var dinner: String = "Steak and potatoes"
//var haircut: String = "bowl cut"
//var fruit: String = "apple"
//var streetName: String = "Bush St."
//var houseColor: String = "yellow"
//let state: String = "California"
//let carIsWorking: Bool = true
//let lovesMusic: Bool = true
//let hours: Int = 24
//let seconds: Int = 60
//let pi: Double = 3.1415
//let college: String = "Stanford"
//let rideHeight: String = "48 inches"
//let year: String = "365 days"
//let coffee: String = "delicious"
//let ice: String = "cold"
//let name: String = "George"
//let isKool: Bool = true
//let worksHard: Bool = true
//let hasKids: String = "Yes"
//let favoriteColor: String = "Green"
//let language: String = "English"
//let sun: String = "hot"
//let carSeats: Int = 4
//let bug: String = "Spider"
//let ocean: String = "Pacific"
//let hungry: Bool = true
//let planetSize: Double = 3959
//let ounce: Int = 8
//let inches: Int = 12
//let hasBreadAndCheese: Bool = true
//let wineType: String = "Red"
//let energy: Int = 10
//Looping through 30 examples:
//for letter in state.characters {
//    print(letter)
//}
//for i in college.characters {
//    print(i == "a" ? true : i)
//}
//for l in rideHeight.characters {
//    if l == " " {
//        print("-", terminator: "")
//    } else {
//        print(l, terminator: "")
//    }
//}
//for space in year.characters {
//    print(space, terminator: "")
//}
//for character in coffee.characters {
//    print(character == "o" ? "😍" : character)
//}
//for cube in ice.characters {
//    if cube == "o" {
//        print("☕️")
//    } else {
//        print(cube)
//    }
//}
//for character in name.characters {
//    print(character, terminator: "")
//}
//for kid in hasKids.characters {
//    switch kid {
//    case "y":
//        print("🙎🏻‍♂️")
//    case "Y":
//        print("🙎🏻‍♂️")
//    case "e":
//        print("🙎🏻")
//    case "s":
//        print("👪")
//    default:
//        print("none")
//    }
//}
//for leaf in favoriteColor.characters {
//    print(leaf == "e" ? "🍃" : leaf)
//}
//for letter in language.characters {
//    print(letter)
//}
//for suntan in sun.characters{
//    print(suntan == "o" ? "☀️" : suntan)
//}
//for creature in bug.characters{
//    print(creature)
//}
//for letter in ocean.characters{
//    print(letter, terminator: "")
//}
//for letter in "red".characters{
//    print(letter)
//}
//for char in "samari".characters {
//    print(char, terminator: "")
//}
//for pages in "book".characters {
//    print(pages, terminator: "")
//}
//for letter in "legend".characters {
//    print(letter, terminator: "")
//}
//for iterator in "outfit".characters {
//    print(iterator)
//}
//for button in "keyboard".characters {
//    print(button)
//}
//for jumping in "dancing".characters {
//    print(jumping)
//}
//for loop in "iterator".characters {
//    print(loop)
//}
//for drop in "water".characters {
//    print(drop)
//}
//for blade in "grass".characters {
//    print(blade)
//}
//for tree in "forest".characters {
//    print(tree)
//}
//for letter in "contract".characters {
//    print(letter)
//}
//for bricks in "building".characters {
//    print(bricks)
//}
//for night in "year".characters {
//    print(night)
//}
//for iterator in "string".characters {
//    print(iterator)
//}
//for iterator in "string".characters {
//    print(iterator)
//}
//for iterator in "string".characters {
//    print (iterator)
//}
//Type conversion 30 examples:
//Int(3.4)
//Int("123")
//Int(7.3455677654)
//Int(0.790)
//Int("1000")
//Int(-5)
//Int(9009)
//Int(7.05)
//Int("-90876")
//Int(3.999999)
//Int(-1)
//Double(-23456)
//Double(3.0899)
//Double(1)
//Double(10)
//Float(3.9239559435749494759483937485649394)
//Float(0.8464475758476585854)
//Float(8.98765436789)
//Float(-1223.234562345)
//String(1)
//String(1739475957)
//String(-92738464)
//String(3.1514)
//String(-0975087)
//String(123)
//String(12334.789)
//String(23456)
//String(13242345)
//String(-23478596)
//String(12435.987)
//String(099283475)
