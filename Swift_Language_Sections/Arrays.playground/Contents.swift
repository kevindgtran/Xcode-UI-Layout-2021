import UIKit

//create sample array
var sampleArray: [String]?
sampleArray = ["black", "green", "silver"]

//return value for array element
func getArrayValue(word: [String]?) -> String {
    guard let value = word else { return "no value" }
        let arrayValue = value[0]
        return arrayValue
}
getArrayValue(word: sampleArray)

//add to an array
sampleArray?.append("red")

//remove from an array
if var sampleArray = sampleArray {
    sampleArray.remove(at: 0)
}

//iterate through an array
var bearArray: [String] = []
func iterateThroughArray(bear: [String]?) -> [String] {
    guard let bear = bear else { return ["no value found"] }
    for element in bear {
        bearArray.append(element)
    }
    return bearArray
}
iterateThroughArray(bear: sampleArray)

//combine arrays
var anotherArray: [String]?
anotherArray = ["apple", "banana", "strawberry"]

func combineArrays(word1: [String]?, word2: [String]?) -> [String] {
    guard let word1 = word1 else { return ["no array in word one"] }
    guard let word2 = word2 else { return ["no array in word two"] }
    var theWholeArray = word1 + word2
    return theWholeArray
}

combineArrays(word1: sampleArray, word2: anotherArray)