//: Playground - noun: a place where people can play

import UIKit

//We love swift website examples

//A closure that has no parameters and returns a string
//var hello: () -> (String) = {
//    return "Hello"
//}
//hello()
//
//A clusre that takes 1 parameter and returns an integer number
//var double: (Int) -> (Int) = { x in
//    return 2 * x
//}
//double(4)
//
//A closure that takes 2 parameters and returns an integer number
//let test: (_ num1: Int, _ num2: Int) -> (Int) = { x, y in
//    return x + y
//}
//test(10, 20)
//var name2: (Int) -> (Int) = { x in
//    return x * 3
//}
//name2(3)
//var numbers = [1, 4, 2, 5, 8, 3]
//print(numbers)
//numbers.sort { (x, y) -> Bool in
//    return x < y
//}
//print(numbers)
//var noParameterAndNoReturnValue: () -> () = {
//    print("no return value")
//}
//var noParameterAndReturnValue = {() -> (Int) in
//    return 1000
//}
//noParameterAndReturnValue()
//var noParameterAndReturnValue: () -> (Int) = {
//    return 1000
//}
//noParameterAndReturnValue()

//var oneParameterAndOneReturnValue: (Int) -> (Int) = { x in
//    return x * 100
//}
//oneParameterAndOneReturnValue(2)
//
//var oneParameterAndOneReturnValue: (Int) -> (Int) = { x in
//        return x * 2
//    }
//oneParameterAndOneReturnValue(3)
//var multipleParametersAndOneReturnType: (_ num1: Int, _ num2: Int, _ num3: Int) -> (Int) = { x, y, z in
//    return x + y + z
//}
//multipleParametersAndOneReturnType(1, 2, 3)
//
//var multipleParametersAndOneReturn: (String, String, String) -> (String) = { word1, word2, word3 in
//    return "\(word1) \(word2) \(word3)"
//}
//multipleParametersAndOneReturn("Hello", ", there", "Kevin")
//
//var aVariableName: (Int, Int) -> (Int) = { x, y in
//    return x + y
//}
//
//var multipleParametersAndOneReturn: (String, String) -> (String) = { name, phrase in
//    return "hello \(name), \(phrase)"
//}
//multipleParametersAndOneReturn("Kevin", "Good morning")
//
//var noParametersOrReturnType: () -> () = {
//    return "hello"
//}

//var omitReturnType = { () -> (Int) in
//    return 1000
//}
//
//var oneParameterAndReturnValue = { (x: Int) -> Int in
//    return x * 3
//}
//
//var oneParameterAndReturnValue: (_ x: Int) -> (Int) = { x in
//    return x % 2
//}
//
//var multipleParametersAndReturnValue = { (first: String, second: String) -> String in
//    return "\(first), \(second)"
//}
//multipleParametersAndReturnValue("Hello", "World")
//
//var shortHandClosures: (Int) -> (Int) = {
//    return $0 + 10
//}
//
//var name: (String) -> (String) = { x in
//    return "hello \(x)"
//}
//name("Kevin")
//
//var nameShortHand: (String) -> (String) = {
//    return "Hello \($0)"
//}
//
//nameShortHand("Kevin")
//
//var sum: (Int, Int) -> (Int) = {
//    return $0 + $1
//}
//sum(2, 2)
//
//var anotherSum = sum
//
//anotherSum(3, 3)

//var number = 0
//var addOne = {
//    number += 1
//}
//print(number)
//addOne()
//print(number)
//addOne()
//addOne()
//addOne()
//print(number)
//
//func makeIterator(from start: Int, step: Int) -> () -> (Int) {
//    var i = start
//    return {
//        let currentValue = i
//        i += step
//        return currentValue
//    }
//}
//
//var iterator = makeIterator(from: 1, step: 1)
//iterator()
//iterator()
//iterator()
//
//var anotherIterator = makeIterator(from: 1, step: 3)
//anotherIterator()
//anotherIterator()
//anotherIterator()
//anotherIterator()



//Higher order functions
//map

//converting array of integers into array of strings
//var numbers = [1,2,3]
//var string = numbers.map { "\($0)" }
//print(string)

//.filter == filters through all the elements in an array for a speficif condition
//
//var numbers = [1,2,3,4,5,6,7,8]
//var evenNumbers = numbers.filter { $0 % 2 == 0 }
//var oddNumbers = numbers.filter { $0 % 2 != 0 }

//.reduce == reduces all the elements in an array to their sum
//let numbers = [1,2,3,4,5]
//let sum = numbers.reduce(0) {$0 + $1}
//print(sum)







//Big Nerd Ranch Book example
//closures: All functions are closures. Functions are a "named closures"

//let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//standard function expression
//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}
//let volunteersSorted = volunteerCounts.sorted(by: sortAscending)

//inline closure
//let volunteersSorted = volunteerCounts.sorted(by: {(i: Int, j: Int) -> Bool in
//    return i < j
//})

//type inference closure
//let volunteersSorted = volunteerCounts.sorted(by: {(i, j) in i < j})
//print(volunteersSorted)

//func makeTownGrand() -> (Int, Int) -> Int {
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
//    return buildRoads
//}
//
//var stopLights = 4
//let townPlanByAddingLightsToExistingLights = makeTownGrand()
//stopLights = townPlanByAddingLightsToExistingLights(4, stopLights)
//print("Knowwhere has \(stopLights) stop lights")









