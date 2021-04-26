import UIKit

//DEFINITION: For loops allow us to loop through a collection or range and execute a task

//LOOP IN A RANGE
//for _ in 0...5 {
//    print("hello world")
//}

//LOOP THROUGH AN ARRAY
//var list = ["orange", "apple", "banana", "strawberry"]
//for item in list {
//    print("I like \(item)")
//}

//LOOP THROUGH A DICTIONARY
//var anotherlist = ["color1" : "blue", "color2" : "green", "color3" : "red"]
//for (key, value) in anotherlist {
//    print("\(key): \(value)")
//}

//WHILE LOOP
//var startingPoint = 0
//while startingPoint < 3 {
//    print("hello")
//    startingPoint += 1
//}

//REPEAT LOOP
//var startingNum = 0
//repeat{
//    print("hello")
//    startingNum += 1
//} while startingNum < 3


//30 FOR LOOP EXAMPLES
//for number in 0...3 {
//    print(number)
//}

//for duck in 0...5 {
//    print("Hello ducky!")
//}

//for item in 1...3 {
//    print("\(item). Check!")
//}

//for count in 0...10 where count == 3 {
//    print("\(count) is found!")
//}

//var names: [String] = ["Bob", "Amy", "Tom", "Mary", "Oscar"]
//for name in names where name == "Amy" {
//    print("Welcome \(name)!")
//}

//for evenNumber in 0...20 where evenNumber % 2 == 0 {
//    print(evenNumber)
//}

//for oddNumber in 0...30 where oddNumber % 2 == 1 {
//    print(oddNumber)
//}

//for _ in 1...10 {
//    print("hello world")
//}

//for _ in 1...30 {
//    print("Practice, Practice, Practice")
//}

//for _ in 1...30 {
//    print("I love tacos")
//}

//for _ in 10..<15 {
//    print("testing testing")
//}

//for _ in 20..<23 {
//    print("GO!", terminator: "")
//}

//for _ in 20...23 {
//    print("can't use negative range")
//}

//var currentLevel: Int = 4
//for level in currentLevel..<10 {
//    currentLevel += 1
//    currentLevel
//    print("remaining levels to beat game \(currentLevel)")
//}

//var currentChapter: Int = 10
//var chaptersRemaining = 21 - currentChapter
//for chapter in currentChapter..<20 {
//    chaptersRemaining -= 1
//    print("only \(chaptersRemaining) left!")
//}

//var startPoint: Int = 2
//for number in startPoint..<20 where number % 2 == 0 {
//    print("\(number) is even")
//}

//var multOf3: Int = 0
//for _ in 0..<10 {
//    multOf3 += 3
//    print(multOf3)
//}

//var multOf7: Int = 0
//for _ in 14..<21 {
//    multOf7 += 7
//    print(multOf7)
//}

//var checkList: [String] = ["pizza", "sandwich", "chicken", "donut"]
//for _ in 0..<checkList.count {
//    print(checkList)
//}

//for specificNum in 0..<100 where specificNum == 12 {
//    print(specificNum)
//}

//var name: String = "Bob"
//for _ in 0..<3 {
//    print("\(name) is kool")
//}

//var counter: Int = 0
//for _ in 0..<10 {
//    counter += 5
//    print(counter)
//}

//var years: Int = 1986
//for _ in 0..<30 {
//    years += 1
//    print("\(years) was awesome!")
//}

//var menuItems: Int = 12
//for item in 1...menuItems {
//    print("menu item number \(item), is amazing!")
//}

//for number in 0...20 {
//    if number % 2 == 0 {
//        print("\(number) is even")
//    } else {
//        print("\(number) is false")
//    }
//}

//var maxNum: Int = 100
//for number in 1...maxNum {
//    if number % 15 == 0 {
//        print("FIZZBUZZ")
//    } else if number % 3 == 0 {
//        print("FIZZ")
//    } else if number % 5 == 0 {
//        print("BUZZ")
//    } else {
//        print(number)
//    }
//}

//var topNumber: Int = 50
//for _ in 1...topNumber {
//    topNumber -= 5
//    print(topNumber)
//}

//for drink in 1...8 {
//    if drink == 1 {
//        print("\(drink) cup of water ")
//    } else {
//        print("\(drink) cups of water ")
//    }
//}

//var days: Int = 0
//var years: Int = 10
//for year in 1...years {
//    days += 365
//    print("there are \(days) in \(years) year's")
//}

//var step: Int = 100
//for _ in 0..<step {
//    step -= 1
//    if step == 0 {
//        print("You made it!!!")
//    } else if step == 1 {
//        print("\(step) more step to go!")
//    } else {
//        print("\(step) more steps to go!")
//    }
//}


//WHILE LOOP EXAMPLES
//var number = 1
//while(number <= 500) {
//    print(number)
//    number += 1
//}
//var number = 500
//while(number >= 0) {
//    print(number)
//    number -= 1
//}
//var starting = 1
//
//repeat {
//    print("Kevin")
//    starting += 1
//} while starting <= 777
//var startingPoint = 1
//while startingPoint <= 10000 {
//  if (startingPoint % 2 != 0) {
//    print(startingPoint)
//    }
//  startingPoint += 1
//}
//for divisibleByThree in 1...10000 {
//    if (divisibleByThree % 3 == 0) {
//        print(divisibleByThree)
//    }
//}
//var startingPoint = 1
//while (startingPoint <= 10000) {
//    if (startingPoint % 3 == 0) {
//        print(startingPoint)
//    }
//startingPoint += 1
//}
//let birthdayMonth = "October"
//var birthdayDay = 1
//
//while (birthdayDay <= 31) {
//    if (birthdayDay == 1 || birthdayDay == 21) {
//        print("\(birthdayMonth), \(birthdayDay)st")
//    } else if (birthdayDay == 3 || birthdayDay == 23) {
//        print("\(birthdayMonth), \(birthdayDay)rd")
//    } else if (birthdayDay == 2 || birthdayDay == 22) {
//        print("\(birthdayMonth), \(birthdayDay)nd")
//    } else {
//        print("\(birthdayMonth), \(birthdayDay)th")
//    }
//    birthdayDay += 1
//}
