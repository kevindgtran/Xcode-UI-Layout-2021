import UIKit

//book example
var meter1Reading: Int?
var meter2Reading: Int?
var meter3Reading: Int?

meter1Reading = 10
meter3Reading = 8
//meter2Reading = 8


//get average of all meter readings
 if let m1 = meter1Reading,
    let m2 = meter2Reading,
    let m3 = meter3Reading {
    let result = (m1 + m2 + m3) / 3
    print(result)
 } else {
    print("missing a meter reading")
}


//DEFINITION: Optionals allow us to work with variables that may have nil values (nil == no value)

//NOTES: Because SWIFT is a type safe language, every variable must have a type and value. Optional variables are helpful when retrieving data that may or may not have values such as bank account info, user details, JSON, etc.
    //OPTIONAL BINDING == "IF LET"
    //SHADOWING == using the optional name as the temporary variable in the if let optional binding block
    //GUARD STATEMENT == "guard let" + else { return } block

//OPTIONAL DECLARING AND UNWRAPPING USING "OPTIONAL BINDING"
//var username: String? = "mrCool1000"
//if let tempVariable = username {
//    print(tempVariable)
//}

//var accountInfo: Int? = 100
//if let tempVar = accountInfo {
//    print(tempVar)
//}

//OPTIONAL DECLARING AND UNWRAPPING USING "GUARD STATEMENTS"
//var userImage: String? = "face.jpeg"
//func checkForUserImage() {
//    guard let userImage = userImage else { print("no value for user Image"); return }
//    print(userImage)
//}
//checkForUserImage()

//OPTIONAL UNWRAPPING USING FORCED UNWRAPPING (DANGEROUS... NOT GOOD PRACTICE)
//var name: String? = "Mickey"
//print(name!)

//UNWRAP 2 OPTIONALS WITH OPTIONAL BINDING IN ONE LINE
//var firstName: String? = "Mickey", lastName: String? = "Mouse"
//if let firstName = firstName, let lastName = lastName { print("\(firstName) \(lastName)") }

//FUNCTION THAT TAKES 2 OPTIONALS, USER GUARD TO UNWRAP AND RETURN OPTIONAL VALUES
//func returnOptionals(firstOptional: String?, secondOptional: String?) {
//    guard let firstOptional = firstOptional else { print("no value for firstOptional") ; return }
//    guard let secondOptional = secondOptional else { print("no value for secondOptional") ; return }
//    print("\(firstOptional) \(secondOptional)")
//}
//returnOptionals(firstOptional: "hello", secondOptional: "world")

//30 EXAMPLES
//check if the optional has a value then set to a constant
//if name != nil {
//    let realName = name!
//    print(realName)
//}

//optional binding syntax
//if let temperaryConstant = optionalVariable {
//execute code with temperaryConstant
//} else {
//    no value for optionalVariable, thus it is nil
//}

//updating an optional in place
//var city: String?
//city = "San Francisco"
//city?.append("!")
//print(city!)

//nil default optional
//var error: String?
//error = "404 not found"
//let anError = error ?? "no error at this time"

//if let example
//var userResponse: String?
//userResponse = "kevin@gmail.com"
//if let someResponse = userResponse {
//    print("Welcome \(someResponse)")
//} else {
//    print("no user response")
//}

//var errorCode: String?
//errorCode = "404"
//if let code = errorCode {
//    print("\(code) - error")
//} else {
//    print("no error at this time")
//}

//Examples: 30

//var optionalString: String?
//var optionalInt: Int?
//var optionalBool: Bool?
//var optionalArray: Array<String>?
//var optionalArray2: [String]?
//var optionalArrayOfInts: [Int]?
//var optionalString: String?
//var optionalArray: [Int]?
//var optionalArray2: [Int?] = []
//var optionalDictionary: (String, Int)?
//var optionalDictionary2: (String?, Int?)
//var optionString: String?
//print(optionString == "")
//print(optionString == nil)
//optionString = "Wes"
//var optionalBool: Bool?
//print(optionalBool == false)
//print(optionalBool == nil)

//var book: String?
//book = "Swift Programming"
//if book != nil {
//    let bookValue = book!
//    print(bookValue)
//} else {
//    print("no book value yet")
//}

//var drink: String?
//drink = "H2O"
//if drink != nil {
//    let hydrate = drink!
//    print("drink plenty of \(hydrate)")
//} else {
//    print("no drink chosen yet")
//}

//var design: String?
//design = "stripes"
//if design != nil {
//    let realDesign = design!
//    print("the design pattern is \(realDesign)!")
//} else {
//    print("design not yet chosen")
//}

//var email: String?
//email = "tom@gmail.com"
//if email != nil {
//    let userEmail = email!
//    print("your password was sent to \(userEmail)")
//} else {
//    print("please enter valid email")
//}

//var creditCard: Int?
//creditCard = 1234567890123456
//if creditCard != nil {
//    let userCreditCard = creditCard!
//    print("please review purchase credit card on file - \(userCreditCard)")
//} else {
//    print("please enter valid credit card number")
//}

//var hasWine: Bool?
//hasWine = true
//if hasWine != nil {
//    let wine = hasWine!
//    print("Yes we have wine!")
//} else {
//    print("no wine yet...😩")
//}

//var shoppingList: [String]?
//shoppingList = ["eggs", "milk", "coffee"]
//if shoppingList != nil {
//    let list = shoppingList!
//    print("need to get groceries!")
//} else {
//    print("dont need groceries yet")
//}

//var savings: Int?
//savings = 3000
//if savings != nil {
//    let investments = savings!
//    print("time to invest some savings!")
//} else {
//    print("need to refactor budget & expenses to save more.")
//}

//var numWatts: Int?
//numWatts = 100
//if let power = numWatts {
//    print("the bulb is \(power) watts")
//} else {
//    print("how many watts do we need?")
//}

//var dessert: String?
//dessert = "vanilla ice cream"
//if let treat = dessert {
//    print("mmmm \(treat)")
//} else {
//    print("which dessert would you like?")
//}

//var height: Double?
//height = 6.3
//if let size = height {
//    print("you are \(size)ft tall")
//} else {
//    print("please enter height")
//}

//var reservation: Bool?
//var time: String = "7:30pm"
//reservation = true
//if let booked = reservation {
//    print("Confirmed, your reservation is at \(time)")
//} else {
//    print("no tables available at that time, please try again")
//}

//var vacationDays: Int?
//vacationDays = 3
//if let trip = vacationDays {
//    print("vacation balance is \(trip)")
//} else {
//    print("vacation balance: 0")
//}

//var meeting: Bool?
//meeting = true
//if let time = meeting {
//    print("yes there's a meeting today")
//} else {
//    print("no meetings scheduled at this time")
//}

//var allergies: String?
//allergies = "nuts"
//if let safety = allergies {
//    print("known allergies: \(safety)")
//} else {
//    print("no known allergies")
//}

//var seatPref: String?
//seatPref = "Window"
//if let seat = seatPref {
//    print("confirm: \(seat) seat preferred")
//} else {
//    print("please choose a perferred seat")
//}

//var practice: String?
//practice = "programming"
//practice?.append(" is kool!")
//print(practice!)

//var actor: String?
//actor = "Will"
//actor?.append(" Smith")
//print(actor!)

//var phoneNum: String?
//phoneNum = "123"
//phoneNum?.append("-4567")
//print(phoneNum!)

//var show: String?
//show = "friend"
//show?.append("s")
//print(show!)

//var food: String?
//food = "tacos"
//food?.append(" tacos! TACOS!!!")
//print(food!)

//var gymStuff: [String]?
//gymStuff = ["water bottle", "shorts", "left shoe"]
//gymStuff?.append("right shoe")
//print(gymStuff!)

//var weights: String?
//weights = "25"
//type(of: weights)
//weights?.append("lb")
//print("where are the \(weights!) dumbbells?")

//var errorMessage: String?
//errorMessage = "404 not found"
//let error = errorMessage ?? "no error at this time"

//var isHot: Bool?
//isHot = true
//let hot = isHot ?? false

//var laundry: Int?
//laundry = 2
//let clothes = laundry ?? 0

//var exercise: String?
//exercise = "Yoga"
//let strength = exercise ?? "need to excersice"

//var status: String?
//status = "train is late"
//let train = status ?? "no delays at this time"

//var dishesNeeded: String?
//dishesNeeded = "coffee cups"
//let dish = dishesNeeded ?? "no dishes needed at this time"
//print(dish)

//var wrongPassword: String?
//wrongPassword = "secretpassword"
//let pass = wrongPassword ?? ""

//let age: Int?
//age = 29
//func checkDrinkingAge(number: Int?) -> String {
//    guard let newNumber = number else { return "no number found" }
//    if newNumber >= 21 {
//        return "you can drink"
//    } else {
//        return "you can't drink"
//    }
//}
//checkDrinkingAge(number: age)

//let userResponse: String?
//userResponse = "hello world"
//func checkUserResponse(answer: String?) -> Bool {
//    guard let aResponse = userResponse else { return false }
//    switch aResponse.lowercased() {
//    case "hello world":
//        return true
//    default:
//        return false
//    }
//}
//checkUserResponse(answer: userResponse)

//var breakfast: String?
//breakfast = "oatmeal"
//
//if let breakfast = breakfast {
//    switch breakfast.lowercased() {
//    case "oatmeal":
//        print("breakfast of champions!")
//    default:
//        print("some other breakfast")
//    }
//}

//var name: String?
//name = "Kevin"

//if let name = name {
//    print("my name is \(name)")
//}

//func checkName(name: String?) -> String {
//    
//    guard let name = name else { return "no name" }
//    return "my name is \(name)"
//}
//
//checkName(name: "Kevin")

//func checkAge(age: Int?) -> String {
//    guard let age = age else { return "no age entered"}
//    if age >= 21 {
//        return "you can drink"
//    } else {
//        return "sorry you can't drink"
//    }
//}
//
//checkAge(age: 18)

