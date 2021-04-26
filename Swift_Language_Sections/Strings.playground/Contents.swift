import UIKit

//DEFINITION: Strings hold a collection of characters in " ".

//STRING CONTANATION: Conbining strings
//var firstWord = "Hello"
//var secondWord = "World"
//var phrase = firstWord + " " + secondWord
//phrase += "!"

//STRING INTERPOLATION: Inter-populate a variable into a string
//var name = "Corey"
//var phrase2 = "\(name) go talk to Mr. Feeny."

//STRING METHODS: methods/ properties of strings
//var story1 = "\"Put down the gun\", John said"
//story1.uppercased()
//story1.lowercased()

////CREATING, ADDING, COUNTING & USING UNICODE CHARACTERS
//var customerOne = "John Doe"
//var customerOneLetterCount = customerOne.characters.count
//customerOne += " was our first customer! \u{2665}"

//var tonightsWine = "Pinot Noir"
//var serverQueston = "Would you care for tonights wine, \(tonightsWine)🍷"
//var lettersInServerQuestion = serverQueston.characters.count

//var typeOfWood = "Cedar"
//var flooringTypes: String = "We carry all types of \(typeOfWood) floors"
//flooringTypes += ", ON SALE!"

//var price: Double
//price = 4.99
//var coffeeSignage: String = "Come grab a cup of joe for only $\(price)"
//coffeeSignage += " - all sizes!"

//var typeOfBread = "Wheat"
//var typeOfMeat = "Chicken"
//var dailyBurgerSpecial = "Today we have locally grown \(typeOfMeat) on \(typeOfBread), for \(price)"


////SUBSCRIPTING A SINGLE VALUE OUT OF A STRING
//var currentlyReading = "Outliers By Malcom Gladwell"
//var startingSpace = currentlyReading.characters.startIndex
//var offSetSpace = currentlyReading.index(startingSpace, offsetBy: 5)

//var bottledWaterBrand: String
//bottledWaterBrand = "ArrowHead"
//bottledWaterBrand.lowercased()
//var startingHike = bottledWaterBrand.startIndex
//var offsetByHike = bottledWaterBrand.index(startingHike, offsetBy: 5)

//var teethWhiteningProduct = "Crest Whitening 3D White Strips, professional level treatment"
//var firstTooth = teethWhiteningProduct.startIndex
//var favoriteTooth = teethWhiteningProduct.index(firstTooth, offsetBy: 44)

//var hotDogCondiment = "Yellow Mustard"
//var firstSnack = hotDogCondiment.startIndex
//var snackTime = hotDogCondiment.index(firstSnack, offsetBy: 2)

//var favoriteFruitJuice: String
//favoriteFruitJuice = "Orange Juice"
//var orangeBag = favoriteFruitJuice.startIndex
//var specificOrange = favoriteFruitJuice.index(orangeBag, offsetBy: 0)

//var newHeadPhones = "Beats Solo 2 Wireless Headphones"
//var firstSound = newHeadPhones.startIndex
//var rightHeadPhone = newHeadPhones.index(firstSound, offsetBy: 5)

//var tomorrowsForecast = "windy"
//var firstRainDrop = tomorrowsForecast.startIndex
//var snowFlake = tomorrowsForecast.index(firstRainDrop, offsetBy: 0)

//var birthdayMonth = "October"
//var firstOfTheMonth = birthdayMonth.startIndex
//var specificBirthDay = birthdayMonth.index(firstOfTheMonth, offsetBy: 0)

//var relaxingActivity = "reading"
//var firstBook = relaxingActivity.startIndex
//var pageNumber = relaxingActivity.index(firstBook, offsetBy: 0)

//var greatMovie = "I am Legand"
//var firstMovieTickets = greatMovie.startIndex
//var firstScene = greatMovie.index(firstMovieTickets, offsetBy: 5)

//var mansBestFriend = "Dogs"
//var firstPet = mansBestFriend.startIndex
//var nextPet = mansBestFriend.index(firstPet, offsetBy: 0)

//bottledWaterBrand[offsetByHike]
//currentlyReading[offSetSpace]
//teethWhiteningProduct[favoriteTooth]
//hotDogCondiment[snackTime]
//favoriteFruitJuice.lowercased()[specificOrange]
//newHeadPhones[rightHeadPhone]
//tomorrowsForecast.uppercased()[snowFlake]
//birthdayMonth.lowercased()[specificBirthDay]
//relaxingActivity[pageNumber]
//greatMovie.lowercased()[firstScene]
//mansBestFriend.lowercased()[nextPet]


//SUBSCRIPTING A RANGE IN A STRING
//var newExamples = "new Example!"
//var firstExample = newExamples.startIndex
//var lastExample = newExamples.index(firstExample, offsetBy: 2)
//var exampleRange = firstExample...lastExample
//var partExample = newExamples[exampleRange]

//var morningStatus = "need coffee this morning or someone is going to die!!!!"
//var morningStatusCount = morningStatus.characters.count
//var startMorningStatus = morningStatus.startIndex
//var lastMorningStatus = morningStatus.index(startMorningStatus, offsetBy: 11)
//var rangeOfMorningStatus = morningStatus[startMorningStatus...lastMorningStatus]

//var playerOneStatus = "Welcome, please login to start"
//var startPlayerOneStatus = playerOneStatus.startIndex
//var endPlayOneStatus = playerOneStatus.index(startPlayerOneStatus, offsetBy: 6)
//var playOneStatusRange = playerOneStatus[startPlayerOneStatus...endPlayOneStatus]

//var gaGreetingSign = "Hello we were hoping you might stop by"
//var startgaGreetingSign = gaGreetingSign.startIndex
//var indexOfgaGreetingSign = gaGreetingSign.index(startgaGreetingSign, offsetBy: 4)
//var portionOfgaGreetingSign = gaGreetingSign[startgaGreetingSign...indexOfgaGreetingSign]

//var morningGreeting = "Good morning everyone!"
//var startIndexMorningGreeting = morningGreeting.startIndex
//var specificMorningGreetingIndex = morningGreeting.index(startIndexMorningGreeting, offsetBy: 11)
//var morningGreetingRange = morningGreeting[startIndexMorningGreeting...specificMorningGreetingIndex]

//var fruitList = "bananas, apples, strawberries"
//var startIndexFruitList = fruitList.startIndex
//var specificIndexFruitList = fruitList.index(startIndexFruitList, offsetBy: 6)
//var oneFruitItem = fruitList[startIndexFruitList...specificIndexFruitList]

//var randomWordOfCharacters = "oiwlHello!a;oidnv;aihlAND;OAISJDF;OANRFA"
//var startRandomWordOfCharacters = randomWordOfCharacters.startIndex
//var indexStartOfRandomWordOfCharacters = randomWordOfCharacters.index(startRandomWordOfCharacters, offsetBy: 4)
//var indexEndOfRandomWordOfCharacters = randomWordOfCharacters.index(indexStartOfRandomWordOfCharacters, offsetBy: 5)
//var newRandomWordOfCharacters = randomWordOfCharacters[indexStartOfRandomWordOfCharacters...indexEndOfRandomWordOfCharacters]

//var studentsNames = "***Kevin***David***Joy***"
//var beginningOfStudentsNames = studentsNames.startIndex
//var kevinCharacterStart = studentsNames.index(beginningOfStudentsNames, offsetBy: 3)
//var kevinCharacterEnd = studentsNames.index(kevinCharacterStart, offsetBy: 4)
//var davidsCharacterStart = studentsNames.index(kevinCharacterEnd, offsetBy: 4)
//var davidsCharacterEnd = studentsNames.index(davidsCharacterStart, offsetBy: 4)
//var joysCharacterStart = studentsNames.index(davidsCharacterEnd, offsetBy: 4)
//var joysCharacterEnd = studentsNames.index(joysCharacterStart, offsetBy: 2)
//var kevinsName = studentsNames[kevinCharacterStart...kevinCharacterEnd]
//var davidsName = studentsNames[davidsCharacterStart...davidsCharacterEnd]
//var joysName = studentsNames[joysCharacterStart...joysCharacterEnd]


////ITERATING & OBTAINING THE INDEX OF A STRING
//var weekendProject = "Build API!!!"
//for (index,character) in weekendProject.characters.enumerated() {
//    print("letter \(character) is at index \(index)")
//}

//var fundamentalPractice = "String subscripting indexing and looping"
//let newFundamentalPractice = fundamentalPractice.replacingOccurrences(of: " ", with: "-")
//var numberOfDashesInWord = Int()
//for (index, character) in newFundamentalPractice.characters.enumerated() {
//    if character == "-" {
//        numberOfDashesInWord += 1
//    }
//}
//let lastStringExample = "There are \(numberOfDashesInWord) dashes in \"\(newFundamentalPractice)\""
//print(lastStringExample)
