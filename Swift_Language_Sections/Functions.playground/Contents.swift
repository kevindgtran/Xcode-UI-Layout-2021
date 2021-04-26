import UIKit

//functions are blocks of code "waiting to be called" to execute a set of code. This helps make our code more modular and DRY


//FUNCTION WITH ONE PERAMETER
//func returnParameter(parameter: String) -> String {
//    return parameter
//}
//var exampleFunction = returnParameter(parameter: "FUNCTIONS ROCK!")
//print(exampleFunction)


//FUNCTION WITH TWO PARAMETERS
//func jediGreet(name: String, ability: String) -> String {
//    return "Good by \(name), may the \(ability) be with you."
//}
//var funnyQuote = jediGreet(name: "Kevin", ability: "force")
//print(funnyQuote)


//FUNCTION TO CALCULATE DRINKING AGE
//func checkDrinkingAge(name: String, age: Int) -> String{
//    if age >= 21 {
//        return "you can drink \(name)"
//    } else {
//        return "sorry, \(name) you can't drink yet."
//    }
//}
//var result = checkDrinkingAge(name: "Billy", age: 30)
//print(result)

//FUNCTION WITH UNDERSCORE AND LABELS
//func exampleLabels(_ name: String, andLast last: String) -> String {
//    return "\(name) \(last)"
//}
//exampleLabels("john", andLast: "smith")

//FUNCTION THATS CALLED 5 TIMES
//for _ in 0...4 {
//    func sayHi() {
//        print("hi")
//    }
//    sayHi()
//}

//FUNCTION RETURNS TRUE IF NUMBER IS EVEN
//func isEven(number: Int) -> Bool {
//    return number % 2 == 0
//}
//isEven(number: 9)

//FUNCTION THAT RETURNS STATEMENT X NUMBER OF TIMES
//func hiMom(phrase: String, numberOfTimes times: Int){
//    for _ in 1...times {
//        print(phrase)
//    }
//}
//hiMom(phrase: "hi mom!", numberOfTimes: 10)

//30 EXAMPLES
//func totalTravel(min: Int, speed: Int) -> String {
//    let distance = min * speed
//    return "traveled \(distance) miles"
//}
//totalTravel(min: 60, speed: 1)
//
//func makeBeer(flavor1: String, fermentor: String, time: Int) -> String {
//    let formula = "boil water for 60 mins, add \(flavor1) then add \(fermentor) and let bottle for \(time) months"
//    return formula
//}
//makeBeer(flavor1: "pumpkin spices", fermentor: "California Yeast - 5500", time: 3)
//
//func printEmoji(emoji: String) -> String {
//    if (emoji == "😀") {
//        return "Laughing"
//    } else if (emoji == "😎") {
//        return "kool"
//    } else {
//        return "no emoji found"
//    }
//}
//printEmoji(emoji: "😎")
//
//func average(num1: Int, num2: Int, num3: Int) -> String{
//    let average = ((num1 + num2 + num3) / 3)
//    return "the average is \(average)"
//}
//average(num1: 1, num2: 2, num3: 3)
//
//func greet(name: String) -> String{
//    return "Hello \(name)"
//}
//greet(name: "Kevin")
//
//func product(num1: Double, num2: Double, num3: Double, num4: Double) -> Double {
//    return num1 * num2 * num3 * num4
//}
//product(num1: 1, num2: 2, num3: 3, num4: 4)
//
//func isSquare(num1: Int) -> Bool {
//    var flag = false
//    for i in 1..<num1 {
//        if i*i == num1 {
//            flag = true
//            break
//        }
//    }
//    return flag
//}
//isSquare(num1: 16)

//func sayHello(name: String) -> String {
//    return "Hello \(name)"
//}
//sayHello(name: "Kevin")

//func greetingsFriend(name: String) -> String{
//    return "hello \(name)"
//}
//greetingsFriend(name: "Tom Hanks")

//func giveComplement(adjective: String) -> String {
//    return "You are so \(adjective)"
//}
//giveComplement(adjective: "Kool")

//func scoreReader(score: Int) -> String {
//    if score >= 100 {
//        return "\(score), is a new record!"
//    } else {
//        return "you're score is \(score)"
//    }
//}
//scoreReader(score: 100)

//func canUseLaptop(hasPower: Bool) -> String{
//    if hasPower {
//        return "you can use your laptop!"
//    } else {
//        return "you need to plug in first"
//    }
//}
//canUseLaptop(hasPower: true)

//func isEvenOrOdd(num1: Int) -> String {
//    if num1 % 2 == 0 {
//        return "true"
//    } else {
//        return "false"
//    }
//}
//isEvenOrOdd(num1: 4)

//func studentGrade(number: Int, name: String) -> String {
//    switch number {
//    case 90...100:
//        return "\(name), got an A"
//    case 80..<90:
//        return "\(name), got an B"
//    case 70..<80:
//        return "\(name), got an C"
//    default:
//        return "\(name), did not pass"
//    }
//}
//studentGrade(number: 90, name: "Kevin")
//studentGrade(number: 80, name: "Bob")
//studentGrade(number: 75, name: "Mary")
//studentGrade(number: 50, name: "Sarah")

////////////////////////////////////////EMPTY STRING
//func isEmpty(phrase: String) -> Bool{
//    if phrase.characters.count > 0 {
//        return true
//    } else {
//        return false
//    }
//}
//isEmpty(phrase: "has characters")

//func numberIsOdd(_ number: Int) -> Bool {
//    return number % 2 == 1
//}
//numberIsOdd(10)

//func isEven(number: Int) -> String {
//    if number % 2 == 0 {
//        return "\(number) is even"
//    } else {
//        return "\(number) is odd"
//    }
//}

//func isEven(number: Int) -> Bool {
//    return number % 2 == 0 ? true : false
//}
//print(isEven(number: 8))

//func dance() {
//    print("everybody footloose!")
//}
//dance()
//
////call the dance function 3 times
//for _ in 0...2 {
//    dance()
//}

//func totalTravel(min: Int, speed: Int) -> String {
//    let distance = min * speed
//    return "traveled \(distance) miles"
//}
//totalTravel(min: 60, speed: 1)
//
//func makeBeer(flavor1: String, fermentor: String, time: Int) -> String {
//    let formula = "boil water for 60 mins, add \(flavor1) then add \(fermentor) and let bottle for \(time) months"
//    return formula
//}
//makeBeer(flavor1: "pumpkin spices", fermentor: "California Yeast - 5500", time: 3)
//
//func printEmoji(emoji: String) -> String {
//    if (emoji == "😀") {
//        return "Laughing"
//    } else if (emoji == "😎") {
//        return "kool"
//    } else {
//        return "no emoji found"
//    }
//}
//printEmoji(emoji: "😎")
//
//func average(num1: Int, num2: Int, num3: Int) -> String{
//    let average = ((num1 + num2 + num3) / 3)
//    return "the average is \(average)"
//}
//average(num1: 1, num2: 2, num3: 3)
//
//func greet(name: String) -> String{
//    return "Hello \(name)"
//}
//greet(name: "Kevin")
//
//func product(num1: Double, num2: Double, num3: Double, num4: Double) -> Double {
//    return num1 * num2 * num3 * num4
//}
//product(num1: 1, num2: 2, num3: 3, num4: 4)
//
//func isSquare(num1: Int) -> Bool {
//    var flag = false
//    for i in 1..<num1 {
//        if i*i == num1 {
//            flag = true
//            break
//        }
//    }
//    return flag
//}
//isSquare(num1: 16)

