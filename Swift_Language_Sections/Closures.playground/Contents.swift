//import UIKit

//Functions are named closures. All functions are closures. Closures are "un-named" functions

//syntax:
//{(parameters) -> return type in
//    return code
//}


//example - passing a function as a method parameter
//let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//func sortAscending(_ i: Int, _ j: Int) -> Bool {
//    return i < j
//}

//func sortDescending(_ k: Int, _ m: Int) -> Bool {
//    return k > m
//}

//let sortedAscendingVolunteerCounts = volunteerCounts.sorted(by: sortAscending)
//let sortedDescendingVolunteerCounts = volunteerCounts.sorted(by: sortDescending)



//example - closure inline for above example
//let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//let sortedDescendingVolunteerCounts = volunteerCounts.sorted { (i, j) -> Bool in
//    return i > j
//}

//let sortedAscendingVolunteerCounts = volunteerCounts.sorted(by: { (_ c: Int, _ b: Int) -> Bool in
//    c < b
//})



//example - closure type inference for example above
//let volunteerCounts = [1, 3, 40, 32, 2, 53, 77, 13]

//let volunteerSorted = volunteerCounts.sorted(by: {i, j in i < j })

//let ascending = volunteerCounts.sorted(by: {(_ i: Int, _ j: Int) -> Bool in
//    return i < j
//})


//functions as return types
//func makeTownGrand() -> (Int, Int) -> Int {
    
//    func buildRoads(byAddingLights lights: Int, toExistingLights existingLights: Int) -> Int {
//        return lights + existingLights
//    }
    
//    return buildRoads(byAddingLights:toExistingLights:)
//}

//let willMakeTownGreat = makeTownGrand()
//willMakeTownGreat(4, 4)


//functions are arguments
//func makeTownGrand(withBudget budget: Int, condition: (Int) -> Bool) -> ((Int, Int) -> Int)? {
//    if condition(budget) {
//        func buildRoads
//    }
//}

//examples













//let greet = { (name: String) -> Void in
//    print("hello \(name)")
//}
//greet("kevin")

//let multiplyClosure = {(num1: Int, num2: Int) -> Int in
//    return num1 * num2
//}

//multiplyClosure(2, 3)

//let someNumbers: [Int] = [1, 5, 2, 42, 90, 5, 32]

//someNumbers.sorted(by: { (_ i: Int, _ j: Int) -> Bool in
//    return i < j })

//let personsAge = { (name: String) -> Int in
//    switch name.lowercased() {
//    case "kevin":
//        return 29
//    default:
//        return 0
//    }
//}
//personsAge("Kevin")









//closures are advanced functions, which help us write functions with less code
//syntax #1:
//var someName: () -> (String) = {
//    return "Hello world"
//}
//someName()

//syntax #2:
//var multiplyTwoNumbers: (Int, Int) -> (Int) = { num1, num2 in
//    return num1 * num2
//}
//multiplyTwoNumbers(3, 3)

//syntax #3
//var addNumbers: (Int, Int, Int) -> (Int) = {
//    return $0 + $1 + $2
//}
//addNumbers(2, 3, 4)

//syntax #4
//closure is defined by its parameters and its return value. Closures always have to define the return type
//var multiplyClosure = { (number: Int, multiplier: Int) -> Int in    //head of closure, declares the parameters and the return value
//    return number * multiplier                                      //body of closure, actual code to be executed
//}
//multiplyClosure(2, 3)

//syntax #5 - not returning anything
//var convertToDouble: (Int) -> Void = { k in
//    Double(k)
//}
//convertToDouble(10)

//var remainderClosure = {(number1: Int, number2: Int) -> Int in
//    return number1 % number2
//}
//remainderClosure(21, 10)

//var sayNameClosure = {(firstName: String, lastName: String) -> String in
//    return "\(firstName) \(lastName)"
//}
//sayNameClosure("Kevin", "Smith")

//ALWAYS DECLARE A RETURN TYPE, EVEN IF NO RETURN THEN RETURN VOID
//var returnVoidClosure = {(() -> Void).self
//}
//returnVoidClosure()

//create closure that returns nothing but prints hello world
//var returnStringClosure = {() -> Void in
//    print("hello world")
//}
//returnStringClosure()

//create function that returns a closure
//func returnAnotherClosure() {
//    returnStringClosure()
//}
//returnAnotherClosure()

//var multiplyClosure: (Int, Int) -> Int = {$0 * $1}
//multiplyClosure(3, 7)

//var helloWithClosure = { () -> String in return "hello"}
//helloWithClosure()


