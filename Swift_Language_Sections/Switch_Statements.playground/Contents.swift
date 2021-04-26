import UIKit

//DEFINITION: Switch statements let us loop through different cases and if a case matches then execute that block of code

//SWITCH STATEMENT CASE == VALUE
//var name = "Tom"
//switch name.lowercased() {
//case "tom":
//    print("found Tom!")
//default:
//    print("haven't found Tom yet.")
//}

//SWITCH STATEMENT CASE == RANGE
//var someNumber = 3
//switch someNumber {
//case 0...10:
//    print("the number is between 0 and 10!")
//default:
//    print("can't locate number")
//}

//SWITCH STATEMENT CASE == MULTIPLE VALUES
//var name = "Mary"
//switch name {
//case "mary", "Mary":
//    print("found Mary!")
//default:
//    print("hello")
//}

//FOR LOOP, SWITCH STATEMENT, COUNTER (daily food tracker)
//var myMeals = ["eggs", "bagel", "coffee", "eggs", "soup", "pizza"]
//var numEggs = 0
//for meal in myMeals {
//    switch meal {
//    case "eggs":
//        print("I ate eggs")
//        numEggs += 1
//    case "bagel":
//        print("I ate a bagel")
//    case "coffee":
//        print("I drank coffee")
//    case "soup":
//        print("I ate soup")
//    case "pizza":
//        print("I ate pizza")
//    default:
//        print("I ate something")
//    }
//}
//print(numEggs)

//NOTES:
//switch statements have to be exhaustive (go through all possible cases) or have a default cas.
//switch statements will automatically break when a case is met, but if we want to continue after its met then we need to add "fallthrough" after each case


//30 EXAMPLES
//var alertCode: Int = 100
//switch alertCode {
//case 100:
//    print("\(alertCode) is good!")
//default:
//    print("not good")
//}

//var size: String = "LARGE"
//switch size.lowercased() {
//case "small":
//    print("you ordered small")
//case "medium":
//    print("you ordered medium")
//case "large":
//    print("you ordered large")
//default:
//    print("no size found")
//}

//var drink: String = "Vente"
//drink = drink.lowercased()
//switch drink.lowercased() {
//case "tall":
//    print("a \(drink) is 3 dollars")
//case "grande":
//    print("a \(drink) is 4 dollars")
//case "vente":
//    print("a \(drink) is 5 dollars")
//default:
//    print("drink size not found")
//}

//var numVotes: Int = 10
//switch numVotes {
//case 0..<100:
//    print("not enough votes")
//case 100..<200:
//    print("enough votes")
//case 200...500:
//    print("you won!")
//default:
//    print("not sure number of votes")
//}

//var num: Int = 9
//switch num {
//case 9, 10:
//    print("Great job!")
//case 7..<9:
//    print("Good job!")
//case 0...6:
//    print("try again")
//default:
//    print("could not calculate number")
//}

//var teamSize: Int = 11
//switch teamSize {
//case 11:
//    print("Ocean's 11")
//case 13:
//    print("Ocean's 13")
//default:
//    print()
//}

//var yearsExp: Int = 8
//switch yearsExp {
//case 0, 1:
//    print("Junior")
//case 2,3,4:
//    print("SWE 2")
//case 5...9:
//    print("senior")
//default:
//    print()
//}

//var animal: String = "tiger"
//switch animal {
//case "tiger":
//    print("orange stripes")
//case "giraff":
//    print("long neck")
//case "dog":
//    print("man's best friend!")
//default:
//    print()
//}

//var emoji = "😎"
//switch emoji {
//case "😎":
//    print("kool")
//case "😍":
//    print("love")
//default:
//    print("emoji not found")
//}

//var transportation: String = "CAR"
//transportation = transportation.lowercased()
//switch transportation {
//case "car", "bus":
//    print("traffic")
//case "plane", "jet":
//    print("fast")
//case "bike","scooter":
//    print("dangerous")
//default:
//    print
//}

//var cost = 50.99
//switch Int(cost) {
//case 0...100:
//    print("affordable")
//case 101...300:
//    print("expensive")
//default:
//    print("out of budget")
//}

//var state: String = "wa"
//state = state.lowercased()
//switch state {
//case "california", "ca":
//    print("CALIFORNIA!")
//case "washington", "wa":
//    print("WASHINGTON!")
//case "new york", "ny":
//    print("NEW YORK!")
//default:
//    print
//}

//var numPeople: Int = 1
//switch numPeople {
//case 1:
//    print("good")
//case 2:
//    print("great")
//case 3:
//    print("trifecta!")
//default:
//    print("")
//}

//var color: String = "#FF0000"
//color = color.lowercased()
//switch color {
//case "red", "#ff0000":
//    print("RED")
//case "blue", "#0000ff":
//    print("BLUE")
//default:
//    print()
//}

//var time: Int = 15
//switch time {
//case 0..<10:
//    print("almost here!")
//case 10...30:
//    print("time for more coding practice")
//default:
//    print()
//}

//var temp: Int = 90
//switch temp {
//case 0..<50:
//    print("its cold!")
//case 50..<80:
//    print("its a bit chilly")
//case 80...90:
//    print("its perfect weather!")
//default:
//    print()
//}

//var speed: Double = 10.7
//switch Int(speed) {
//case 0...15:
//    print("we're going slow")
//case 16...25:
//    print("moderate speed")
//default:
//    print()
//}

//var winner: Bool = true
//switch winner {
//case true:
//    print("Kevin won!")
//default:
//    print("Kevin lost...")
//}

//var seatsAvail: Int = 4
//switch seatsAvail {
//case 1,2,3,4:
//    print("there's \(seatsAvail) available! BOOK NOW HERE ☑️")
//case 5...100:
//    print("there's plenty of seats available!")
//default:
//    print("number of seats not found")
//}

//var lateTime: Int = 10
//switch lateTime {
//case 1:
//    print("train is \(lateTime) minute behind, sorry for the inconvenience")
//case 2...60:
//    print("train is \(lateTime) minutes behind, sorry for the inconvenience")
//default:
//    print("all trains running on time")
//}

//var name: String = "Sir Lance-Olot"
//switch name.lowercased() {
//case "sir lance-olot":
//    print("Welcome \(name)!")
//default:
//    print("unable to find username")
//}

//var food: String = "Cereal"
//switch food.lowercased() {
//case "eggs":
//    print("you can make an omelete!")
//case "cereal":
//    print("you can make cereal")
//default:
//    print("not sure what you can make with \(food)")
//}

//var hasRide: Bool = true
//switch hasRide {
//case true:
//    print("awesome we have a ride!")
//default:
//    print("uh oh, no ride")
//}

//var hasInternet: Bool = true
//switch hasInternet {
//case true:
//    print("yes we have internet! Let's get to work")
//default:
//    print("half day everyone! 😎")
//}

//var leftDirection: Bool = false
//switch leftDirection {
//case true:
//    print("turn left")
//default:
//    print("turn right")
//}

//var oilChange: Int = 3000
//switch oilChange {
//case 0..<2000:
//    print("ok")
//case 2000..<3000:
//    print("Your at \(oilChange) miles, you should get an oil change soon")
//case 3000...5000:
//    print("OIL CHANGE OVERDUE")
//default:
//    print()
//}

//var weather: String = "Sunny"
//switch weather.lowercased() {
//case "sunny", "hot":
//    print("bring a hat")
//case "raining", "rainy", "rain":
//    print("bring an umbrella")
//default:
//    print()
//}

//var numWalls: Int = 4
//switch numWalls {
//case 1,2,3:
//    print("\(numWalls) walls is less than a standard room, costing you $1000")
//case 4:
//    print("thats a standard room rate of $1000")
//case 5...10:
//    print("\(numWalls) walls is a custom room, cost vary")
//default:
//    print("unable to determine room cost, need to do in-person estimate")
//}

//var cupOz = 8
//switch cupOz {
//case 1...8:
//    print("short cup")
//case 8...12:
//    print("tall cup")
//case 12...16:
//    print("grande cup")
//case 16...20:
//    print("vente cup")
//default:
//    print("not sure of the cup size")
//}
//var numberOfRooms = 3
//switch numberOfRooms {
//case 1:
//    print("only 1 room, they're looking for 2 more rooms")
//case 2:
//    print("only 2 rooms, they're looking for 1 more room")
//case 3:
//    print("That's what the customer is looking for!")
//default:
//    print("The customer is looking for \(numberOfRooms) rooms")
//}
//var gradeLevel = 83
//switch gradeLevel {
//case (0...69):
//    print("failing")
//case (70...80):
//    print("passing")
//case (81...90):
//    print("good job")
//case (91...100):
//    print("killing it!")
//default:
//    print("your grade is \(gradeLevel)")
//}
