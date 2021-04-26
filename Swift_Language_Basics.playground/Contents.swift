import UIKit

//nil-coalescing operator
//var isOn: String? = "On"
//print("The light is \(isOn ?? "off")")

//ranges
//let list = [[1,2,3],
//            [4,5,6],
//            [7,8,9]
//            ]
//for group in list {
//    print("The third item in each sub array is \(group[2])")
//}

//for number in 5..<10 {
//    print(number)
//}

//logic
//let hasBread: Bool? = true
//let hasMeat: Bool? = true
//let hasCheese: Bool? = true
//if (hasBread! && hasMeat! && hasCheese!) {
//    print("Can make a sandwich")
//}
//if let hasBread = hasBread, let hasMeat = hasMeat, let hasCheese = hasCheese {
//    print("Yup can make bread")
//}
//func makeSandwich(bread: Bool?, meat: Bool?, cheese: Bool?) -> String {
//    guard let hasBread = bread else { return "no bread"}
//    guard let hasMeat = meat else { return "no meat" }
//    guard let hasCheese = cheese else { return "no cheese" }
//
//    if hasBread && hasMeat && hasCheese {
//        return "we can make a sandwich!"
//    } else {
//        return "we can't make a sandwich"
//    }
//}
//makeSandwich(bread: true, meat: false, cheese: true)

//string initialization
//let emptyString = ""
//let anotherEmptyString = String()
//let newGreeting = emptyString + "hello" + " world"
//print(newGreeting)

//String looping
//let name = "Bobby"
//for letter in name.uppercased() {
//    print(letter)
//}

//arrays
//var alist: [String] = []
//let anotherList = [String]()
//alist.append("One")
//let a2DList = [[1,2,3],
//               [4,5,6],
//               [7,8,9]
//              ]
//let three = a2DList[0][2]
//let seven = a2DList[2][0]
//let listOfThrees = Array(repeatElement(3, count: 5))
//var studyMaterials: [String] = ["Laptop", "Books"]
//studyMaterials.append("Internet")
//var greatStudyMaterials: [String] = ["Practice Interviews", "math and algorithm websites"]
//studyMaterials += greatStudyMaterials
//print(studyMaterials)
//print("I've found that \(studyMaterials[3]) and \(studyMaterials[4]) are really helpful!")
//for thing in studyMaterials.enumerated() {
//    print("\(thing.offset + 1). \(thing.element)")
//}
//for (number, item) in studyMaterials.enumerated() {
//    print("\(number + 1). \(item)!!!")
//}

//sets
//var aNewSet = Set<String>()
//let anotherSet = Set<Character>()
//aNewSet.insert("First")
//print(aNewSet)
//let aListOfStuff: Set<String> = ["Rufus", "Buddy", "Buddy"]
//print(aListOfStuff.first!)

//Dictionaries
//var emptyDict: [String: String] = [:]
//emptyDict["hot dog and "] = "bun"
//print(emptyDict)
//let anotherEmptyDict = [String: String]()
//let dict = ["name": "Bobby",
//            "age": "twenty-two",
//            "favFood": "Pizza"
//            ]
//var dict2: [String: Int] = ["address": 123,
//                            "phone": 5551234,
//                            "health": 100]
//print("There are \(dict2.count) key value pairs in dict2")
//dict2["weight"] = 165
//dict2.count
//dict2["weight"] = 155
//if let newWeight = dict2["weight"] {
//    print("he now weighs \(newWeight)")
//}
//dict2["address"] = nil
//dict2.count
//for (pumpkin,latte) in dict2 {
//    print(pumpkin, latte)
//}
//let dict2Array = [Int](dict2.values)

//control flow
//let listOfNames: [String] = ["Bob", "Mary", "Justin"]
//for (number, name) in listOfNames.enumerated() {
//    print("\(number + 1). \(name)")
//}
//let aDict: [String: Bool] = ["Milk": true,
//                             "eggs": true,
//                             "coffee": true
//                            ]
//for item in aDict {
//    print(item)
//}
//let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4, "dog": 4]
////print statement of each animal and number of legs
//for animal in numberOfLegs {
//    print("the \(animal.key) has \(animal.value) legs")
//}

//print all the base 3 values up to 10. ie 3,9,27,...

//loop through 10 times, on each loop multiply and update an answerVariable - on each iteration update answerVariable to the product of itself and base 3
//var answerVariable = 1
//let base = 3
//for _ in 1...10 {
//    answerVariable = answerVariable * base
//    print(answerVariable)
//}

//print the multiples of 5 from 0 - 50
//loop through and only return divisibles of 5
//for f in 0...50 {
//    if (f % 5 == 0) {
//        print(f)
//    }
//}
////loop through using stride to set the from, to and by what stride
//for n in stride(from: 0, to: 55, by: 5) {
//    print(n)
//}
//for f in stride(from: 0, through: 50, by: 5) {
//    print(f)
//}
//While loops
//var n = 1
//while (n < 10) {
//    print(n)
//    n = n + 1
//}
//create an array of values 0-25, using repeating
//let finalSquare = 25
//var board = [Int](repeatElement(0, count: finalSquare + 1))
//var square = 0
//var diceRoll = 0
//while square < finalSquare {
//    // roll the dice
//    diceRoll += 1
//    if diceRoll == 7 { diceRoll = 1 }
//    // move by the rolled amount
//    square = square + diceRoll
//    if square < board.count {
//        // if we're still on the board, move up or down for a snake or a ladder
//        square = square + board[diceRoll]
//    }
//}
//print("Game over!")
//uinary operators
//var sum = Int()
//sum = +3
//sum = sum + 7
//sum = sum - 5
//print(sum)
//repeat-while
//var n = 0
//repeat {
//    print("first")
//    n = n + 1
//} while (n < 3)
//    print("last")
//switch statements
//let letter = "A"
//switch letter {
//case "c", "C":
//    print("found C")
//case "a", "A":
//    print("found A")
//default:
//    print("could not find letter")
//}
//let countTime = Int()
//var finalTime = String()
//switch countTime {
//case 0:
//    finalTime = "zero"
//case 1..<20:
//    finalTime = "low"
//case 20..<35:
//    finalTime = "good"
//case 35..<50:
//    finalTime = "too long"
//default:
//    finalTime = "Could not record time"
//}
//let somePoint = (1,1)
//switch somePoint {
//case (0, 0):
//    print("At the center")
//case (_, 0):
//    print("somewhere on the y-axis")
//case (0, _):
//    print("somewhere on the x-axis")
//case (-2...2, -2...2):
//    print("\(somePoint) is in the box")
//default:
//    print("unable to locate somePoint at: \(somePoint)")
//}

//create an algorithm - that returns a phrase removing all the vowels
//declare inputPhrase & outputPhrase variables, create array of characters of vowels, loop through the inputPhrase, on each character loop - check if the array of vowels contains that character if so, do nothing, if not then append the non-vowel letter to the outputPhrase
//let inputPhrase = "great minds think alike"
//var outputPhrase = ""
//let vowels: [Character] = ["a", "e", "i", "o", "u"]
//for letter in inputPhrase {
//    if (vowels.contains(letter)) {
//        //continue
//    } else {
//        outputPhrase.append(letter)
//    }
//}
//print(outputPhrase)
//guard statement

//create a person dictionary with string key and values of name, location, favFood
//var person = [String:String]()
//person = ["name": "Dean",
//          "location": "San Jose",
//          "favFood": "Burgers"
//         ]
//func greetDean(person: [String: String]) -> String {
//    guard let name = person["name"] else { return "no name found" }
//    guard let location = person["location"] else { return "no location found" }
//    guard let favoriteFood = person["favFood"] else { return "no favorite food found" }
//    return "Hello \(name), it's a lovely day in \(location), \(favoriteFood) are my favorite food too!"
//}
//greetDean(person: person)

//functions
//func greetPerson(_ person: String) -> String {
//    return "Hello \(person)"
//}
//greetPerson("Boo")
//print(greetPerson("Bob"))

//func climateGreeting(name: String, location: String) -> String {
//    return "Hello \(name), hope you're enjoying the weather in \(location)!"
//}
//print(climateGreeting(name: "Sandy", location: "Hawaii"))

//create an algorithm that takes an array and returns the smallest and largest values in a tuple
//let anArray: [Int] = []
//func smallestANDBiggest(list: [Int]) -> (smallest: Int, largest: Int)? {
//    //loop through each element in array, check each number, if number is less than smallestValue, then set smallestValue to number.
//    //else if number is greater than largestValue then set largestValue to number
//    //return (smallestValue, largestValue)
//    if (list.isEmpty) {
//        print("empty array")
//        return nil
//    } else {
//        var smallestValue = list[0]
//        var largestValue = list[0]
//        for number in list {
//            if (number < smallestValue) {
//                smallestValue = number
//            } else if (number > largestValue) {
//               largestValue = number
//            }
//        }
//    return (smallestValue, largestValue)
//    }
//}
//if let answer = smallestANDBiggest(list: anArray) {
//print("The smallest value is \(answer.smallest), and the largest value is \(answer.largest)")
//}

//build an algorithm that takes in an array of doubles and returns the average
//func average(_ numbers: Double...) -> Double? {
//    //if numbers is 0, return 0
//    //if numbers is empty return nil, make out return an optional
//    //declare an answer variable
//    //loop through numbers and add to answer variable
//    //update answer with the answer divided by its count
//    //return answer
//    if (numbers.isEmpty) {
//        print("empty list of numbers")
//        return nil
//    } else {
//        var answer = Double()
//        var numbersCount = Double()
//        for n in numbers {
//            answer += n
//            numbersCount += 1
//        }
//        answer = answer/numbersCount
//        return answer
//    }
//}
//average(3,6,9,12,15,18)

//build an algorithm that takes in 2 arguments and swaps them
//func swapper(_ firstValue: inout Int, _ secondValue: inout Int) -> (Int, Int) {
//    let tempFirstValue = firstValue
//    firstValue = secondValue
//    secondValue = tempFirstValue
//    return (firstValue, secondValue)
//}
//var someVar = 3
//var anotherVar = 10
//var newValues = swapper(&someVar, &anotherVar)
//print("The new value for someVar:\(newValues.0) and anotherVar: \(newValues.1)")

//setting a variable to a functions type
//func sum(_ num1: Int, _ num2: Int) -> Int {
//    return num1 + num2
//}
//var addingNumbers: (Int, Int) -> Int = sum(_:_:)
//addingNumbers(2, 5)
//print(addingNumbers(3, 1))

//func add(_ num1: Int, _ num2: Int) -> Int {
//    return num1 + num2
//}
//var someMath: (Int, Int) -> Int = add(_:_:)
////print("3 + 5 is \(someMath(3, 5))")
//
//func printMath(_ someSomeMath: (Int, Int) -> Int, _ a: Int, _ b: Int) {
//    print("\(someSomeMath(a, b))")
//}
//printMath(someMath, 5, 5)

//func stepForward(_ input: Int) -> Int {
//    return input + 1
//}
//
//func stepBackward(_ input: Int) -> Int {
//    return input - 1
//}
//
////build a function that returns a another function value
//func nextStep(_ steppingForward: Bool) -> (Int) -> Int {
//    return steppingForward ? stepForward : stepBackward
//}

//print numbers from 3 to 0 with a while loop & recursion
//func countDown(_ startPoint: Int) {
//    var startPoint = startPoint
//    while (startPoint != 0) {
//        print("\(startPoint)...")
//        startPoint -= 1
//    }
//    print("zero!")
//}
//countDown(3)

//func countDown(_ num: Int) {
//    print("\(num)...") //prints it as each function is pushed on the stack
//    3,2,1 == 3,2,1
//    if (num == 0) {
//        print("zero...")
//    } else {
//        countDown(num - 1)
//    }
//}
//countDown(3)

//func countUp(_ num: Int) {
//    if (num == 0) {
//        print("zero...")
//    } else {
//        countUp(num - 1)
//    }
//    print("\(num)...") //prints each as their popped off the stack
//    //3,2,1 == 1,2,3
//}
//countUp(3)

//fibonacci algorithm with recursion
//Fibonacci sequence is a sequence of numbers where the next number is the sum of the previous 2 numbers, ie 0,1,1,2,3,5,8,13...
//F(0) = 0
//F(1) = 1
//F(2) = F(1) + F(0) = 1
//F(3) = F(2) + F(1) = 2
//F(4) = F(3) + F(2) = 3
//F(5) = F(4) + F(3) = 5
//func fib(_ num: Int) -> Int {
//    //base case
//    if (num <= 2) {
//        return 1
//    } else {
//        return fib(num - 1) + fib(num - 2)
//    }
//}
//fib(6)

//print all the numbers from 1 - N with recursion
//func printNums(N: Int) {
//    var num = 1
//    while (num <= N) {
//        print(num)
//        num += 1
//    }

//func printFirstNums(_ N: Int) {
//    if N > 1 {
//        printFirstNums(N - 1)
//    }
//    print(N)
//}
//printFirstNums(3)

//Factorial with recursion
//Factorial N! is the product of all the consecutive positive numbers up to N
//5! = 1 * 2 * 3 * 4 * 5 = 120
//3! = 1 * 2 * 3 = 6
//base case, if N is <= 1, return 1
//recursion case, else return Factorial(N) * Factorial(N - 1)

//func fact(_ num: Int) -> Int {
//    if (num == 1) {
//        return 1
//    } else {
//        return num * fact(num - 1)
//    }
//}
//fact(3)

//build an algorithm that takes in a number and recursively returns an array with each digit of that number
//example 123 = [1,2,3]
//example 0 = [0]
//example 54321 = [5,4,3,2,1]

//base case - when N is less than 10, return N
//recursive case - recursively divide N by 10 to get the first digit, also get the last digit with %, then combine all the first digits with the last digit
//func digits(_ N: Int) -> [Int] {
//    if (N >= 10) {
//        let firstDigits = digits(N / 10)
//        //54321
//        //5432
//        //543
//        //54
//        //5
//        let lastDigit = N % 10
//        //1
//        //2
//        //3
//        //4
//        return firstDigits + [lastDigit]
//        //[5], [4], [3], [2], [1]
//    } else {
//        return [N]
//    }
//}
//digits(54321)

//closures
//let charactersList = ["a", "h", "f", "d", "b"]
//charactersList.sorted()
//let names = ["sally", "tony", "mary", "bob"]
//func backward(_ s1: String, _ s2: String) -> Bool {
//    //a to z
//    return s1 < s2
//    //z to a
//    //return s1 > s2
//}
////var reversedNames = names.sorted(by: backward)
////written with a closure
//var reversedNames = names.sorted(by: {(s1, s2) -> Bool in
//    return s1 < s2
//})

//build an algorithm that sorts
//func sorts(_ arr: [Int]) -> [Int] {
//    var finalArr = [Int]()
//    for n in arr {
//        if (arr[n] < arr[n + 1]) {
//            finalArr.insert(arr[n], at: 0)
//        } else {
//            finalArr.insert(arr[n], at: 1)
//        }
//    }
//    return finalArr
//}
//
//let nums = [2,6,12,3,5]
//sorts(nums)

//build an algorithm that takes an array of int values and returns their string values. Intput: [16,...] Output: "OneSix"
//let digitNames = [
//    0: "Zero", 1: "One", 2: "two", 3: "three", 4: "Four",
//    5: "Five", 6: "Six", 7: "Seven", 8: "Eight", 9: "Nine"
//]
//let number = [16, 58, 510]
//let strings = number.map { (number) -> String in
//    var number = number
//    var output = ""
//    repeat {
//        output = digitNames[number % 10]! + output
//        number /= 10
//    } while number > 0
//    return output
//}

//build an algorith that has a nested function inside
//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//let incrementByTen = makeIncrementer(forIncrement: 10)
//incrementByTen

//let emtpyString = String()
//let character: Character = "o"
//switch character {
//case "a":
//    print("is a")
//case "b", "c":
//    print("b or c")
//default:
//    print("unable to determine character")
//}

//print hello 5 times
//for _ in 1...5 {
//    print("hello")
//}

//return the sum of all the numbers up to 5
//var sum = Int()
//for n in 1...5 {
//    sum += n
//}
//print(sum)

//sum up all the multiples of 3 from 0 - 10
//var sum = Int()
//for n in 0...10 {
//    if n % 3 == 0 {
//        sum += n
//    }
//}
//print(sum)

//print hello 10 times using a while loop
//var counter = 1
//while (counter < 11) {
//    print("hello")
//    counter = counter + 1
//}

//write an algorithm that repeats hello 10 times using a decrementing while loop
//var counter = 10
//while (counter > 0) { //base case
//    print("hello")
//    counter -= 1
//}

//print hello 10 times with the repeat while loop
//var counter = 10
//repeat {
//    print("hello")
//    counter -= 1
//} while (counter > 0)

//func add(_ num1: Int, _ num2 : Int) -> Int {
//    return num1 + num2
//}
//add(1, 2)
//benefits of functions == lets us reuse code, rather than write that same code over and over. Note - we can declare new variables/ constants in new functions as each variable exists within the functions scope

//Declare a new class named BlogPost with 3 properties, then create a new instance of BlogPost (object)
//class BlogPost {
//    var title = String()
//    var body = String()
//    var author = String()
//    var numberOfComments = Int()
//
//    func addComment() {
//        numberOfComments += 1
//    }
//
//}
//
//let myPost = BlogPost()
//myPost.title = "Programming rules!"
//myPost.body = "reviewing and learning new things!"
//myPost.author = "Plays with Squirrels"
//
//let secondPost = BlogPost()
//secondPost.title = "Masters review"
//secondPost.body = "reviewing material, is great to learn new tips and tricks. Plus it helps to solidify the material"
//secondPost.author = "Plays with Squirrels"
//secondPost.addComment()
//print(secondPost.numberOfComments)

//classes allow us to create a blueprint of information that can then be replicated into different instances (objects). This cuts down on having to rewrite tons of code over and over. Each class (blueprint) is like a template with different properties (variables) and functions (characteristics) that we can customize for each new instance (object)

//create a class, then another class inheriting from the first class. Within the subclass call the super and override a function as well. Then create objects for each class instance.

//class Car {
//    var topSpeed = 150
//
//    func drive() {
//        print("Driving at \(topSpeed) miles an hour")
//    }
//}
//
//class ElectricCar: Car {
//    var color = String()
//
//    override func drive() {
//        print("Cruising silently at \(topSpeed) miles an hour")
//    }
//}
//
//let myCRV = Car()
//myCRV.topSpeed
//myCRV.topSpeed = 180
//myCRV.drive()
//
//let myTeslaX = ElectricCar()
//myTeslaX.color = "Grey"
//myTeslaX.topSpeed = 130
//myTeslaX.drive()
//with inheritance we can inherit variables and functionality from one class to another. We can then override the base classes functions with the "override" keyword or call the original function with the "super" keyword

//class with a custom init method that takes in 3 parameters for the properties, without the param name, use the same property and param name to use the self
//class Person {
//    var name = ""
//    var age = 0
//}
//
//let bob = Person() //initializing a Person class to a constant named bob
//bob.age //default values
//bob.name //default values
//
//class Employee: Person {
//    var title = String()
//    var ratePerHour = Double()
//    init(_ title: String, _ ratePerHour: Double) {
//        self.title = title
//        self.ratePerHour = ratePerHour
//    }
//}
//let peter = Employee("Supervisor", 43.50)
//peter.name = "Peter"
//peter.age = 30
//peter.ratePerHour
//peter.title
//print("The new \(peter.title) is \(peter.name)!")

//create a book class with optional properties, then create a book object assign values and use the values (unwrap the mystery gift)
//class Book {
//    var title:String?
//    var numPages:Int?
//}
//let currentBook = Book()
//currentBook.title = "CTCI"
//currentBook.numPages = 190
//if let title = currentBook.title, let pages = currentBook.numPages {
//    print("Currently reading \(title), its short with only \(pages) pages")
//}

//Declare Book class with one property title and an optional property nyBestSeller
//class Book {
//    var title = String()
//    var nyBestSeller: Bool?
//
//    init() {
//    }
//
//    //create custom initializer function to pass in property values into object instances
//    init(_ title: String, _ nyBestSeller: Bool? ) {
//        self.title = title
//        self.nyBestSeller = nyBestSeller
//    }
//}
//
////create Book object, assign a title value and print if optional value is present
//let book1 = Book()
//book1.title = "Book1"
//if let bestSeller = book1.nyBestSeller {
//    print("\(book1.title) is a best seller")
//} else {
//    print("\(book1.title) is a good book")
//}
//
//let book2 = Book("Book2", true)
//if let nyBestSeller = book2.nyBestSeller {
//    print("\(book2.title) is a New York Times BestSeller!")
//} else {
//    print("Book 2 is good")
//}

//create 2 classes, and a property that refers to one of the classes. Then create a computed property and display the results
//class Person {
//    var name = String()
//}
//
//class Book {
//    var title: String?
//    var author: Person?
//
//    //computed propety
//    var description: String {
//        if let title = title, let author = author?.name {
//            return "\(title) by \(author)"
//        } else {
//            return "no title or author"
//        }
//    }
//}
//
//let person1 = Person()
//person1.name = "Bob"
//
//let book1 = Book()
//book1.title = "Book 1"
//book1.author = person1
//book1.description

//designated and convenience initializers
//class Person {
//    var name = String()
//}
//
//class Book {
//    var title = String() //declare and initialize
//    var author: Person //declare and using designated initializer
//    var description: String? //declare and optional initializer - optional variables creates safety checks in order to access the value. This is because optionals can be nil/ have a value
//    var numPages: Int //declare and use designated initlizer
//
//    init() {
//        self.author = Person()
//        self.numPages = Int()
//    }
//
//    init(author: Person, description: String?, numPages: Int) {
//        self.author = Person()
//        self.description = description
//        self.numPages = numPages
//    }
//
//    convenience init(customTitle: String) {
//        self.init()
//        self.title = customTitle
//    }
//}
//
////Designated Initializer
////var person = Person()
////person.name = "person"
////var someBook = Book()
////someBook.title = "SomeBookTitle"
////someBook.author = person
////someBook.description = "description"
////someBook.numPages = 12
//
////Designated Initializer passing in values
//var me = Person()
//me.name = "Me"
//print(me.name)
//
////designated initializer
//var myCurrentBook = Book(author: me, description: "Halloween", numPages: 1)
//print(myCurrentBook.author.name)
//if let description = myCurrentBook.description {
//    print(description)
//}
//print(myCurrentBook.numPages)
//
////convenience initializer
//var customeBook = Book(customTitle: "Custome Title")
//print(customeBook.title)

var list = ["dog", "cat", "bird"]

//for counter in 0...2 {
//    print("My " + list[counter])
//}

//for animal in list {
//    print("my " + animal)
//}

//list += ["mouse", "horse"]
//list[2] = "pony"
//list

//dictionaries - unordered key value pairs of data
//var drinkSizes = [String: String]()
//
////adding key/value pairs into dictionary
//drinkSizes["sml"] = "small"
//drinkSizes["med"] = "medium"
//drinkSizes["lrg"] = "large"
//
////retrieving values
//drinkSizes["sml"]
//drinkSizes["lrg"]
//func retrieveValue(_ dict: [String: String], _ key: String) {
//    if let value = dict[key] {
//        print(value)
//    }
//}
//retrieveValue(drinkSizes, "smlllll")
//retrieveValue(drinkSizes, "med")
//
////updating value in dictionary
//drinkSizes["med"] = "grande"
//drinkSizes["lrg"] = "venti"
//drinkSizes["sml"] = "tall"
//drinkSizes
//
////remove values
////drinkSizes["sml"] = nil
////drinkSizes["med"] = nil
////drinkSizes
//
////iterate through
//for (key, value) in drinkSizes {
//    print("A \(key) is a \(value)")
//}


//power algorithm

//Euclid algorithm

//binary search algorithm

//towers of hanoi algorithm


