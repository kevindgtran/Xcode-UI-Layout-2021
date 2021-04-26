import UIKit

//PRIME - print all primes up to n
//iterate each number from 1 to 20
//set each number to true
//check if each number has a multiple
//if number does have multiple set number to false
//print true numbers

//var isPrime = true
//for number in 2...20 {
//    isPrime = true
//    for multiple in 2..<number {
//        if(number % multiple == 0) {
//            isPrime = false
//        }
//    }
//    if(isPrime == true){
//        print(number)
//    }
//}

//HARMONIC series formula
//var sum = 1.0
//for harmonic in 2...20 {
//    var math = (Double(1)/Double(harmonic))
//    sum += math
//}
//print(sum)

//ADD UP THE SUM AND ADD A VALUE WITH EACH ITERATION
//Use a loop to multiply two numbers 234 and 3643 using only addition.
//declare a sumValue = 0
//iterate x number of times
//each iteration update and add y value to sumValue
//print sumValue

//var sumValue = 0
//for x in 1...243 {
//    sumValue += 3643
//}
//print(sumValue)

//FIZZBUZZ
//for fbNumbers in 1...100 {
//    if (fbNumbers % 3 == 0 && fbNumbers % 5 == 0) {
//        print("\(fbNumbers) = FizzBuzz!")
//    } else if (fbNumbers % 3 == 0) {
//        print("\(fbNumbers)...Fizz")
//    } else if (fbNumbers % 5 == 0) {
//        print("\(fbNumbers)...Buzz")
//    } else {
//        print(fbNumbers)
//    }
//}

//FACTORIAL
//var factorialSum = 1
//var n = 15
//while(n >= 1){
//    factorialSum = factorialSum * n
//    n -= 1
//}
//print(factorialSum)

//CHECKERED BOARD
//for box in 1...110 {
//    if (box % 11 == 0) {
//        print()
//    } else if(box % 2 != 0){
//        print("\u{2B1B}", terminator:"")
//    } else {
//        print("\u{2B1C}", terminator:"")
//    }
//}

//AIRPLANE SEATING arrangement (1a through 1h) for 26 rows of seats
//iterate through x to 26
//print the seating arrangement for each row, iterpolating in x
//for seat in 1...26 {
//    print("\(seat)a \(seat)b \(seat)c \(seat)d \(seat)e \(seat)f \(seat)g \(seat)h")
//}

//STOCKMARKET - find the greatest value (difference), but can't "sell before you buy"
//let stock_prices_yesterday: [Float] = [10,7,5,8,11,9]
//func get_max_profit(_ prices:[Float]) -> Float{
//
//    //this would break the code if stock_prices_yesterday was empty
//    var minValue = stock_prices_yesterday[0]
//    var maxProfit:Float = 0.0
//
//    for price in 1..<stock_prices_yesterday.count{
//
//        let currentProfit = stock_prices_yesterday[price] - minValue
//        if currentProfit > maxProfit{
//            maxProfit = currentProfit
//        }
//        if stock_prices_yesterday[price] < minValue{
//            minValue = stock_prices_yesterday[price]
//        }
//    }
//    return maxProfit
//}
//get_max_profit(stock_prices_yesterday)

//PALINDROME
//First - remove white space
//Second - remove special characters
//Third - lower case word
//Fourth - create reversed word from original
//Fifth - check if word is equal the reversed word, if yes return true, if not return false
//func isPalindrome(_ name:String) -> Bool {
//    var goober = name.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
//    goober = String(goober.characters.filter { !" ?.!@#$%^()'".characters.contains($0) })
//    goober = goober.lowercased()
//    let goobreverse = String(goober.characters.reversed())
//    if goober == goobreverse {
//        return true
//    }
//    return false
//}
//isPalindrome("eye")
//isPalindrome("racecar")
//isPalindrome("kevin")
//isPalindrome("madam I'm adam")
//isPalindrome("Was it Eliots toilet I saw?")
//isPalindrome("Never Odd or even")
//isPalindrome("Murder for a jar of red rum")

//http://adriann.github.io/programming_problems.html
//no# 19
//var testArrayOne: [String] = ["Hello", "World", "in", "a", "frame"]
//func printListInRectangle(_ list: [String]) {
//    //find the length of the longest word
//    var maxLength = 0
//    for word in list {
//        if word.characters.count >= maxLength {
//            maxLength = word.characters.count
//        }
//    }
//    //print the astericks in words
//    let asteriskRowLength = maxLength + 4
//    let asteriskRow = (1...asteriskRowLength).map{ _ in "*" }.joined()
//    print(asteriskRow)
//    for word in list {
//        print("* ", terminator: "")
//        print(word, terminator: "")
//
//        let difference = maxLength - word.characters.count
//        let spaces = (0..<difference).map{ _ in " " }.joined()
//        print(spaces, terminator: "")
//
//        print(" *")
//    }
//    print(asteriskRow)
//}
//printListInRectangle(testArrayOne)

//DNA SEQUENCING
//func repeatDNASequence(s: String) ->String{
//    //length of the subsquence
//    let k = 10
//
//    //create dictionary to hold substring
//    var substringCount = [String: Int]()
//
//    //count every subsequence
//    for i in 0...s.characters.count - k {
//        //figure out the subsequence
//        let startIndex = s.index(s.startIndex, offsetBy: i)
//        let endIndex = s.index(s.startIndex, offsetBy: i+10)
//        let substring = s[startIndex..<endIndex]
//
//        if let value = substringCount[substring] {
//            substringCount[substring] = value + 1
//        } else {
//            substringCount[substring] = 1
//        }
//    }
//    //filter out the substrings that we only saw once
//    let repeatedSubString = substringCount.filter { (key, value) -> Bool in
//        return value > 1
//       //dump the count of the remaining substrings
//        }.map { (key, value) -> String in
//            return key
//        }
//    let sortedRepeatedSubstrings = repeatedSubString.sorted()
//    return sortedRepeatedSubstrings
//}

//ANAGRAM
//var word1 = "name"
//var word2 = "Mean"
//word1.lowercased().characters.sorted() == word2.lowercased().characters.sorted() ? "yup, is an anagram" : "nope, not an anagram"

//SORT ARRAY
//var array = [5, 10, 1, 3, 8, 7, 16]
//
//func sortInPlace(_ array: inout [Int]) {
//    if array.count < 2 { return }
//    for i in 1..<array.count {
//        for j in 0..<i {
//            if array[i] < array[j] {
//                swap(&array[i], &array[j])
//            }
//        }
//    }
//}
//sortInPlace(&array)

//REVERSE STRING
//func reverseWord (_ word: String) -> String {
//    var reversedWord = ""
//    for letter in word.characters {
//        reversedWord = "\(letter)" + reversedWord
//    }
//    return reversedWord
//}
//
//reverseWord("Kevin")
//reverseWord("hello world")

//reverse vowels algorithm
//func reverseVowels(_ word: String) -> String {
//    var lowerCasedWord = word.lowercased()
//    var reversedWord = ""
//    var wordVowels = ""
//
//    for character in lowerCasedWord.characters {
//        if character == "a" ||
//           character == "e" ||
//           character == "i" ||
//           character == "o" ||
//           character == "u" {
//            wordVowels.append(character)
//        }
//    }
//    var reversedVowels = String(wordVowels.characters.reversed())
//
//    for letter in lowerCasedWord.characters {
//        if letter == "a" ||
//            letter == "e" ||
//            letter == "i" ||
//            letter == "o" ||
//            letter == "u" {
//            reversedWord.append(reversedVowels[reversedVowels.startIndex])
//            reversedVowels.remove(at: reversedVowels.startIndex)
//        } else {
//            reversedWord.append(letter)
//        }
//    }
//    return reversedWord
//}
//reverseVowels("I need more coffee!")
//reverseVowels("Kevin")
//reverseVowels("Scotty Blades of fire!")


//using .map in functional programming
//map an array [1,18,32,6]
//even numbers are true , odd are false
//var array1 = [1,18,32,6]
//let newArray = array1.map { number -> Bool in
//    number % 2 == 0
//}
//let newArray = array1.map { $0 % 2 == 0 }
//print(newArray)

//Problem: given a string print the EVEN INDECES then space then odd indices
//given a string
//create empty string
//index the characters
//append all the even indexes to the empty string
//add space to emtpy string
//append all the odd indexes to empty string
//print empty string
//var exampleWord = "Richard"
//var exampleEvenWord = String()
//var exampleOddWord = String()
//for (index,character) in exampleWord.characters.enumerated() {
//    if index % 2 == 0 {
//        exampleEvenWord += String(character)
//    } else {
//        exampleOddWord += String(character)
//    }
//}
//var finalWord = "\(exampleEvenWord) \(exampleOddWord)"
//print(finalWord)

//hackerrank - print the fraction of the number of Ints in the are: Positive, Negative, Zero
//let array = [-4,3,-9,0,4,1]
//let arrayCount = Float(array.count)
//var totalPositive: Float = 0
//var totalNegative: Float = 0
//var totalZero: Float = 0
//
//if array.count == 0 {
//    print("empty array")
//} else {
//    for number in array {
//        if number > 0 {
//            totalPositive += 1
//        } else if number == 0 {
//            totalZero += 1
//        } else {
//            totalNegative += 1
//        }
//    }
//    let formatter = NumberFormatter()
//    formatter.minimumFractionDigits = 4
//    formatter.maximumFractionDigits = 4
//    print("Positive: \(formatter.string(for: totalPositive/arrayCount)!)")
//    print("Zero: \(totalZero/arrayCount)")
//    print("Negative: \(totalNegative/arrayCount)")
//}

//SORT ARRAY
//var array1 = [2,4,1,3,5]
//var sortedArray = [Int]()
//var firstNum = array1[0]
//for number in array1 {
//    if number > firstNum {
//        sortedArray.append(number)
//    } else {
//        sortedArray.insert(number, at: 0)
//    }
//}
//print(sortedArray)
//var listOfNumbers = [1, 2, 3, 10, 100]
//var nElements = listOfNumbers.count
//var didSwap = true
//while didSwap {
//    didSwap = false
//    for i in 0..<nElements - 1 {
//        if listOfNumbers[i] < listOfNumbers[i+1] {
//            var tmp = listOfNumbers[i]
//            listOfNumbers[i] = listOfNumbers[i+1]
//            listOfNumbers[i+1] = tmp
//            didSwap = true
//        }
//    }
//}
//print(listOfNumbers)












//PRIME - print all primes up to n
//iterate each number from 1 to 20
//set each number to true
//check if each number has a multiple
//if number does have multiple set number to false
//print true numbers

//var isPrime = true
//for number in 2...20 {
//    isPrime = true
//    for multiple in 2..<number {
//        if(number % multiple == 0) {
//            isPrime = false
//        }
//    }
//    if(isPrime == true){
//        print(number)
//    }
//}


//HARMONIC series formula
//var sum = 1.0
//for harmonic in 2...20 {
//    var math = (Double(1)/Double(harmonic))
//    sum += math
//}
//print(sum)


//ADD UP THE SUM AND ADD A VALUE WITH EACH ITERATION
//Use a loop to multiply two numbers 234 and 3643 using only addition.
//declare a sumValue = 0
//iterate x number of times
//each iteration update and add y value to sumValue
//print sumValue

//var sumValue = 0
//for x in 1...243 {
//    sumValue += 3643
//}
//print(sumValue)


//FIZZBUZZ
//for fbNumbers in 1...100 {
//    if (fbNumbers % 3 == 0 && fbNumbers % 5 == 0) {
//        print("\(fbNumbers) = FizzBuzz!")
//    } else if (fbNumbers % 3 == 0) {
//        print("\(fbNumbers)...Fizz")
//    } else if (fbNumbers % 5 == 0) {
//        print("\(fbNumbers)...Buzz")
//    } else {
//        print(fbNumbers)
//    }
//}


//FACTORIAL
//var factorialSum = 1
//var n = 15
//while(n >= 1){
//    factorialSum = factorialSum * n
//    n -= 1
//}
//print(factorialSum)


//CHECKERED BOARD
//for box in 1...110 {
//    if (box % 11 == 0) {
//        print()
//    } else if(box % 2 != 0){
//        print("\u{2B1B}", terminator:"")
//    } else {
//        print("\u{2B1C}", terminator:"")
//    }
//}


//AIRPLANE SEATING arrangement (1a through 1h) for 26 rows of seats
//iterate through x to 26
//print the seating arrangement for each row, iterpolating in x
//for seat in 1...26 {
//    print("\(seat)a \(seat)b \(seat)c \(seat)d \(seat)e \(seat)f \(seat)g \(seat)h")
//}


//STOCKMARKET - find the greatest value (difference), but can't "sell before you buy"
//let stock_prices_yesterday: [Float] = [10,7,5,8,11,9]
//func get_max_profit(_ prices:[Float]) -> Float{
//
//    //this would break the code if stock_prices_yesterday was empty
//    var minValue = stock_prices_yesterday[0]
//    var maxProfit:Float = 0.0
//
//    for price in 1..<stock_prices_yesterday.count{
//
//        let currentProfit = stock_prices_yesterday[price] - minValue
//        if currentProfit > maxProfit{
//            maxProfit = currentProfit
//        }
//        if stock_prices_yesterday[price] < minValue{
//            minValue = stock_prices_yesterday[price]
//        }
//    }
//    return maxProfit
//}
//get_max_profit(stock_prices_yesterday)


//PALINDROME
//First - remove white space
//Second - remove special characters
//Third - lower case word
//Fourth - create reversed word from original
//Fifth - check if word is equal the reversed word, if yes return true, if not return false
//func isPalindrome(_ name:String) -> Bool {
//    var goober = name.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)
//    goober = String(goober.characters.filter { !" ?.!@#$%^()'".characters.contains($0) })
//    goober = goober.lowercased()
//    let goobreverse = String(goober.characters.reversed())
//    if goober == goobreverse {
//        return true
//    }
//    return false
//}
//isPalindrome("eye")
//isPalindrome("racecar")
//isPalindrome("kevin")
//isPalindrome("madam I'm adam")
//isPalindrome("Was it Eliots toilet I saw?")
//isPalindrome("Never Odd or even")
//isPalindrome("Murder for a jar of red rum")


//http://adriann.github.io/programming_problems.html
//no# 19
//var testArrayOne: [String] = ["Hello", "World", "in", "a", "frame"]
//func printListInRectangle(_ list: [String]) {
//    //find the length of the longest word
//    var maxLength = 0
//    for word in list {
//        if word.characters.count >= maxLength {
//            maxLength = word.characters.count
//        }
//    }
//    //print the astericks in words
//    let asteriskRowLength = maxLength + 4
//    let asteriskRow = (1...asteriskRowLength).map{ _ in "*" }.joined()
//    print(asteriskRow)
//    for word in list {
//        print("* ", terminator: "")
//        print(word, terminator: "")
//
//        let difference = maxLength - word.characters.count
//        let spaces = (0..<difference).map{ _ in " " }.joined()
//        print(spaces, terminator: "")
//
//        print(" *")
//    }
//    print(asteriskRow)
//}
//printListInRectangle(testArrayOne)


//DNA SEQUENCING
//func repeatDNASequence(s: String) ->String{
//    //length of the subsquence
//    let k = 10
//
//    //create dictionary to hold substring
//    var substringCount = [String: Int]()
//
//    //count every subsequence
//    for i in 0...s.characters.count - k {
//        //figure out the subsequence
//        let startIndex = s.index(s.startIndex, offsetBy: i)
//        let endIndex = s.index(s.startIndex, offsetBy: i+10)
//        let substring = s[startIndex..<endIndex]
//
//        if let value = substringCount[substring] {
//            substringCount[substring] = value + 1
//        } else {
//            substringCount[substring] = 1
//        }
//    }
//    //filter out the substrings that we only saw once
//    let repeatedSubString = substringCount.filter { (key, value) -> Bool in
//        return value > 1
//       //dump the count of the remaining substrings
//        }.map { (key, value) -> String in
//            return key
//        }
//    let sortedRepeatedSubstrings = repeatedSubString.sorted()
//    return sortedRepeatedSubstrings
//}


//ANAGRAM
//var word1 = "name"
//var word2 = "Mean"
//word1.lowercased().characters.sorted() == word2.lowercased().characters.sorted() ? "yup, is an anagram" : "nope, not an anagram"


//SORT ARRAY
//var array = [5, 10, 1, 3, 8, 7, 16]
//
//func sortInPlace(_ array: inout [Int]) {
//    if array.count < 2 { return }
//    for i in 1..<array.count {
//        for j in 0..<i {
//            if array[i] < array[j] {
//                swap(&array[i], &array[j])
//            }
//        }
//    }
//}
//sortInPlace(&array)


//REVERSE STRING
//func reverseWord (_ word: String) -> String {
//    var reversedWord = ""
//    for letter in word.characters {
//        reversedWord = "\(letter)" + reversedWord
//    }
//    return reversedWord
//}
//
//reverseWord("Kevin")
//reverseWord("hello world")


//reverse vowels algorithm
//func reverseVowels(_ word: String) -> String {
//    var lowerCasedWord = word.lowercased()
//    var reversedWord = ""
//    var wordVowels = ""
//
//    for character in lowerCasedWord.characters {
//        if character == "a" ||
//           character == "e" ||
//           character == "i" ||
//           character == "o" ||
//           character == "u" {
//            wordVowels.append(character)
//        }
//    }
//    var reversedVowels = String(wordVowels.characters.reversed())
//
//    for letter in lowerCasedWord.characters {
//        if letter == "a" ||
//            letter == "e" ||
//            letter == "i" ||
//            letter == "o" ||
//            letter == "u" {
//            reversedWord.append(reversedVowels[reversedVowels.startIndex])
//            reversedVowels.remove(at: reversedVowels.startIndex)
//        } else {
//            reversedWord.append(letter)
//        }
//    }
//    return reversedWord
//}
//reverseVowels("I need more coffee!")
//reverseVowels("Kevin")
//reverseVowels("Scotty Blades of fire!")


//using .map in functional programming
//map an array [1,18,32,6]
//even numbers are true , odd are false
//var array1 = [1,18,32,6]
//let newArray = array1.map { number -> Bool in
//    number % 2 == 0
//}
//let newArray = array1.map { $0 % 2 == 0 }
//print(newArray)


//Problem: given a string print the EVEN INDECES then space then odd indices
//given a string
//create empty string
//index the characters
//append all the even indexes to the empty string
//add space to emtpy string
//append all the odd indexes to empty string
//print empty string
//var exampleWord = "Richard"
//var exampleEvenWord = String()
//var exampleOddWord = String()
//for (index,character) in exampleWord.characters.enumerated() {
//    if index % 2 == 0 {
//        exampleEvenWord += String(character)
//    } else {
//        exampleOddWord += String(character)
//    }
//}
//var finalWord = "\(exampleEvenWord) \(exampleOddWord)"
//print(finalWord)


//hackerrank - print the fraction of the number of Ints in the are: Positive, Negative, Zero
//let array = [-4,3,-9,0,4,1]
//let arrayCount = Float(array.count)
//var totalPositive: Float = 0
//var totalNegative: Float = 0
//var totalZero: Float = 0
//
//if array.count == 0 {
//    print("empty array")
//} else {
//    for number in array {
//        if number > 0 {
//            totalPositive += 1
//        } else if number == 0 {
//            totalZero += 1
//        } else {
//            totalNegative += 1
//        }
//    }
//    let formatter = NumberFormatter()
//    formatter.minimumFractionDigits = 4
//    formatter.maximumFractionDigits = 4
//    print("Positive: \(formatter.string(for: totalPositive/arrayCount)!)")
//    print("Zero: \(totalZero/arrayCount)")
//    print("Negative: \(totalNegative/arrayCount)")
//}



//SORT ARRAY
//var array1 = [2,4,1,3,5]
//var sortedArray = [Int]()
//var firstNum = array1[0]
//for number in array1 {
//    if number > firstNum {
//        sortedArray.append(number)
//    } else {
//        sortedArray.insert(number, at: 0)
//    }
//}
//print(sortedArray)
//var listOfNumbers = [1, 2, 3, 10, 100]
//var nElements = listOfNumbers.count
//var didSwap = true
//while didSwap {
//    didSwap = false
//    for i in 0..<nElements - 1 {
//        if listOfNumbers[i] < listOfNumbers[i+1] {
//            var tmp = listOfNumbers[i]
//            listOfNumbers[i] = listOfNumbers[i+1]
//            listOfNumbers[i+1] = tmp
//            didSwap = true
//        }
//    }
//}
//print(listOfNumbers)

//HACKERRANK CEASAR CIPHER
//let message = "middle-Outz!"
//let key = 2
//// returns okffng-Qwb!
//
//func encryptMessage(string: String, key: Int) -> String {
//    // Array of alphabet to sort through
//    let alphabetArray = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//
//    // Break down string to array
//    var messageArray = message.characters.map { String($0) }
//
//    // Iterate through messageArray to cipher message
//    for i in 0..<messageArray.count {
//        for j in 0..<alphabetArray.count {
//            if messageArray[i] == alphabetArray[j] {
//                if j > alphabetArray.count-key-1 {
//                    messageArray[i] = alphabetArray[alphabetArray.count-2-j+key]
//                } else {
//                    messageArray[i] = alphabetArray[j + key]
//                }
//                break
//            }
//        }
//    }
//
//    return messageArray.joined()
//}
//
//encryptMessage(string: message, key: key)

//HACKERRANK CREATE NEW WORD WITH EVEN/ ODD INDEX'S
//var exampleEvenWord = String()
//var exampleOddWord = String()
//
//for (index,character) in string.characters.enumerated() {
//    if index % 2 == 0 {
//        exampleEvenWord += String(character)
//    } else {
//        exampleOddWord += String(character)
//    }
//}
//let finalWord = "\(exampleEvenWord) \(exampleOddWord)"
//print(finalWord)



/////////////////////////////HACKERRANK
//let n = Int(readLine()!)!
//recursion
//func factorial(N: Int) -> Int {
//    if (N == 1){
//        return 1
//    }
//    return N * factorial(N: (N - 1))
//}
//factorial(N: 3) //DONT FORGET TO PRINT THE VALUE

//converting binary numbers to decimals,
//ex. 5 == 101, max consecutive # of 1's is 1
//ex. 13 == 1101, max consecutuve # of 1's is 2




//func binaryConverter(N: Int) -> Int {
//    //continuously divide N by 2 till N == 1, each division if remainder greater than 0, then add one to maxOnes variable
//    var maxOnes: Int = 0
//    var sum: Int = 0
//    var num: Int = N
//
//    while (num > 0) {
//        if (num % 2 >= 1) {
//            sum += 1
//            if (sum > maxOnes) {
//                maxOnes = sum
//            }
//        } else {
//            sum = 0
//        }
//        num /= 2
//    }
//    return maxOnes
//}
//binaryConverter(N: 5)


//build an algorithm that returns the sum of an integer array
//func sum(_ arr: [Int]) -> Int? {
//    if (arr.isEmpty) {
//        return nil
//    } else {
//        var total = 0
//        for n in arr {
//            total += arr[n - 1]
//        }
//        return total
//    }
//}
//var someArray = [Int]()
//someArray = [1,2,3,4]
//sum(someArray)






//recursively
//base case = emtpy array, or 1 array item
//recursive case = subscript the array + 1 on each recursion

//recurseSum(someArray[0] + someArray[1...end])
//if someArray.isEmpty {

//func sum(_ arr: [Int]) -> Int? {
//    //base cases
//    if (arr.isEmpty) {
//        return nil
//    } else if (arr.count == 1) {
//        return arr[0]
//    } else {
//        //resursion
//        return arr[0] + sum(arr[++1])
//    }
//    return 0
//}
//var someArray = [Int]()
//someArray = [1,2,3]
//sum(someArray)

var primes = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97]

let sortedArr:[Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20]

func swiftBinarySearch (_ arr: [Int], target: Int) -> String {
    
    var minPosition: Int = 0
    var maxPosition: Int = arr.count - 1
    var middleGuessPosition: Int = (minPosition + maxPosition) / 2
    
    if arr[middleGuessPosition] == target {
        return "\(target) found in array!"
    }
    
    while minPosition < maxPosition {
        
        if arr[middleGuessPosition] < target {
            minPosition = middleGuessPosition + 1
        }
        
        if arr[middleGuessPosition] > target {
            maxPosition = middleGuessPosition - 1
        }
        
        middleGuessPosition = (minPosition + maxPosition) / 2
        
        if arr[middleGuessPosition] == target {
            return "\(target) found in array!"
        }
        
    }
    
    return "\(target) not in array."
}

//swiftBinarySearch(sortedArr, target: 10)

//Exponential function using recursion
var result = 1
func expoRecursion (base: Int, exponent: Int) -> String {
    if exponent < 0 {  //negative exponents
        return "Please enter positive exponent"
    }
    if exponent == 0 { //base case
        return "Base \(base), exponent \(exponent) is 1"
    } else { //recursive case
        expoRecursion(base: base, exponent: exponent - 1)
        result *= base
        return "Base \(base), exponent \(exponent) is \(result)"
    }
}
//expoRecursion(base: 3, exponent: 3)


//create a function that squares each value of an array using recursion
let arr = [0,2,-3,4,5,6,-7,8,9]
let endIndex = arr.count - 1
var newArr = [Int]()
var squared = Int()

private func squares (array: [Int], index: Int) -> [Int] {
    if index == 0 {
        squareAndAppend(array: array, index: index)
    } else {
        squares(array: arr, index: index - 1)
        squareAndAppend(array: array, index: index)
    }
    return newArr
}

private func squareAndAppend(array: [Int], index: Int) {
    squared = array[index] * array[index]
    newArr.append(squared)
}
//squares(array: arr, index: endIndex)


//create an algorithm that returns the min and max of an unsorted array, without using the sorted method, using recursion
let someArr = [87,45,2,0,-4,23,-55,10,7]
var minimum = someArr[0]
var maximum = someArr[0]
let count = someArr.count
var index = 0

private func theMinAndMax (array: [Int], index: Int) -> (min: Int, max: Int) {
    if index == count {
    } else {
        theMinAndMax(array: array, index: index + 1)
        
        if array[index] < minimum {
            minimum = array[index]
        }
        
        if array[index] > maximum {
            maximum = array[index]
        }
    }
    return (minimum, maximum)
}
//theMinAndMax(array: someArr, index: index)

