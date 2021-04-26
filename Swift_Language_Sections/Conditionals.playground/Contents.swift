import UIKit

//DEFINITION: Conditional statements determine whether a statement is true or false by comparing its values, if true it'll execute a specific block of code, else if false then it'll execute another set of code

//COMPARISON OPERATORS: 
// == equal
// != different
// >= greater than or equal to
// <= less than or equal to

//var number = 123
//if number == 123 {
//    print("number is equal to 123")
//} else if number != 123 {
//    print("number is not equal to 123")
//}
//
//var age = 30
//if age >= 21 {
//    print("you can drink")
//} else {
//    print("you can not drink")
//}

//LOGIC OPERATORS:
// && AND
// || OR

//var userName = "myUsername"
//var password = "123456789"
    //    if userName == "myUsername" && password == "123" {
    //        print("authorized")
    //    } else if userName == "myUsername" || password == "123" {
    //        print("username or password is incorrect")
    //    } else {
    //        print("not authorized")
    //    }

//NOTES: conditionals are just evaluating of something is true or false, so if the variable is a bool type, just putting the variable is enough. Variables declared in an if statement "live" only within that if statement, this is referred to as scope. Variables declared outside of the if block accessible throughout the conditional/ outside as well.


//EXAMPLES
//print the largest value of 3 variables
//var a = 5
//var b = 10
//var c = 150
//if (a > b && a > c) {
//    print("a is the largest")
//} else if (c > b) {
//    print("c is the largest")
//} else {
//    print("b is the largest")
//}
//if both freddy and jason are smiling == trouble || both are not smiling else everythings ok
//var jasonIsSmiling = true
//var freddyIsSmiling = false
//if (jasonIsSmiling && freddyIsSmiling || !jasonIsSmiling && !freddyIsSmiling) {
//    print("trouble!")
//} else {
//    print("everythings ok... for now")
//}
//var numSidesOfShape = 0
//if(numSidesOfShape == 3){
//    print("Triangle \u{1F53A}")
//} else if(numSidesOfShape == 4){
//    print("Square \u{1F532}")
//} else{
//    print("its probably a circle \u{26AB}")
//}
//let highScore = 100
//var currentScore = 80
//if (currentScore >= highScore) {
//    print("new high score!")
//} else {
//    print("current score: \(currentScore)")
//}
//var hasBread = true
//var hasMeat = true
//var hasLettus = true
//var hasCheese = true
//if (hasBread && hasMeat && hasLettus && hasCheese) {
//    print("Can make a sandwich!")
//}
//var meatTemp = 70
//if (meatTemp >= 65) {
//    print("The meat is done!")
//}
//var numEggs = 1
//var numBeer = 1
//var hasSomeBread = true
//if (numEggs < 3 && numBeer <= 2 && hasSomeBread == false) {
//    print ("we need to buy groceries")
//} else if (numEggs < 3) {
//    print("need to pick up eggs")
//} else if (numBeer <= 1) {
//    print("need to get beer")
//} else if (hasSomeBread == false) {
//    print("need to get bread")
//} else {
//    print("we have food")
//}