import UIKit

//Structs hold information, like a blueprint for our data. Convenient way to pass around data. Structs are immutable... so we'll need to use mutating to update any properties


//example 2
//struct Student {
//    var firstName: String
//    var lastName: String
//    var classes: [Class] = []
//    
//    //create appending method for student classes
//    mutating func addClasses(aClass: Class) {
//        classes.append(aClass)
//    }
//    
//    func studentSchedule() {
//        print("Schedule: \(classes)")
//    }
//}
//
//struct Class {
//    var subject: String
//}
//
//var firstClass = Class(subject: "Math")
//
//var student1 = Student(firstName: "Bob", lastName: "Developer", classes: [firstClass])
//
//var secondClass = Class(subject: "Science")
//var thirdClass = Class(subject: "Computer Science")
//
////append all the classes to student1
//student1.addClasses(aClass: secondClass)
//student1.addClasses(aClass: thirdClass)
//
//student1.studentSchedule()


//example 1
//struct Book {
//    var title: String
//}
//
//struct Author {
//    var firstName: String
//    var lastName: String
//    var books: [Book] = []
//    
//    //create method that appends a new book to the books property
//    mutating func addBook(newBook: Book){
//        books.append(newBook)
//    }
//}
//var book = Book(title: "The Stand")
//
//var writer = Author(firstName: "Stephen", lastName: "King", books: [book])
//
//var anotherBook = Book(title: "The GunSlinger")
//
//writer.addBook(newBook: anotherBook)
//
//print(writer.books)

//create a struct for a book object then create a mutating function that will update the cost property
//struct Book {
//    var title: String
//    var numPage: Int
//    var cost: Double
//    
//    mutating func calculateCost(numPages: Int) -> Double {
//        cost = Double(numPages) * Double(2)
//        return cost
//    }
//}
//var newBook = Book(title: "Tribes", numPage: 100, cost: 1.2)
//newBook.cost
//newBook.calculateCost(numPages: 100)

//struct Dog {
//    var name: String, breed: String
//    var age: Int
//}
//var Roofus: Dog
//Roofus.age = 1
//Roofus.breed = "Pug"
//Roofus.name = "Roofus"
//var anotherDog = Dog(name: "buddy", breed: "doborman", age: 10)

//struct Book {
//    var title: String
//}
//
//var newBook = Book(title: "Tribes")
//print(newBook.title)
//
//struct Author {
//    var name, book: String?
//}
//
//var newAuthor = Author(name: "Tom Rath", book: "StrengthFinder 2.0")
//        print("\(newAuthor.name!) wrote \(newAuthor.book!)")
//
//var stephenKing = Author()
//stephenKing.book = "a book"
//print(stephenKing.book!)


//create 3 structs, one that takes in an array of another struct, create properties and mutating functions for each. Create new instances of the structs and print their values

//struct Person {
//    var firstName: String?
//    var lastName: String?
//    var age: Int?
//}
//
//struct Book {
//    var title: String?
//    var numPages: Int?
//    
//    func bookPrice() -> Int {
//        return numPages! * 1
//    }
//}
//
//struct House {
//    var RoomMates: [Person]?
//    var address: String?
//    var mortgage: Int?
//    
//    func rentPerUser(mortgage: Int, numUsers: Int) -> Int {
//        return mortgage / numUsers
//    }
//}
//
//var Bob = Person(firstName: "Bob", lastName: "Developer", age: nil)
//print(Bob.age)

////////////////////////////////
//Definition: a newly created type, a grouping of specific data in memory, used as a template/ mold for new instances of that struct
//Syntax:
//create new struct called Town
//struct Town {
//    var population: Int = 5240
//    var numberOfStopLights: Int = 4
//
//    func townDescription() {
//        print("Welcome, our town has \(population) people, and \(numberOfStopLights) stop lights")
//    }
//
//    mutating func changePopulation(by amount: Int) {
//        population += amount
//    }
//}

//create new instance of Town struct called myTown
//var myTown = Town()
//    print(myTown.population)
//    print(myTown.numberOfStopLights)
//    myTown.townDescription()
//    myTown.changePopulation(by: 1000)
//    myTown.population

//30 examples
//struct Table {
//    var length: Int = 4
//    var numLegs: Int = 4
//
//    func description() {
//        print("beautiful \(length)ft table!")
//    }
//
//    mutating func changeLength(by feet: Int) {
//        length += feet
//    }
//}
//
//var myTable = Table()
//    myTable.numLegs
//    myTable.length
//    myTable.description()
//    myTable.changeLength(by: 3)
//    myTable.description()

//struct Outfit {
//    var top: String = "shirt"
//    var bottom: String = "pants"
//
//    func description() {
//        print("today I'm wearing a \(top) and \(bottom)")
//    }
//
//    mutating func changeOutfit(by style: String) {
//        top = "\(style) shirt"
//    }
//}
//
//var myOutfit = Outfit()
//    myOutfit.top
//    myOutfit.description()
//    myOutfit.changeOutfit(by: "plaid")
//    myOutfit.description()

//struct Television {
//    var diagonal: Double
//    var make: String
//    var model: Double
//
//    func shortDescription() -> String {
//        return "\(make) \(model) : \(diagonal) inches"
//    }
//}
//
//var myTelevision = Television(diagonal: 50, make: "Samsung", model: 5.6)
//
//myTelevision.diagonal
//myTelevision.make
//
//myTelevision.diagonal = 30
//myTelevision.diagonal
//
//
//
//struct Dog {
//    var breed: String
//    var color: [String]
//    var energyLevel: Int
//    var furType: String
//    var distructive: Bool
//    var instaImage: String
//
//    func showPicture() -> String {
//        return ""
//    }
//}
//
//var captJiblet = Dog (
//    breed: "cattle dog",
//    color: ["red", "white", "blue"],
//    energyLevel: 9,
//    furType: "course medium",
//    distructive: false,
//    instaImage: "cptJiblet.png"
//)
//var image = UIImage(named: "cptJiblet.png")
//
//
//class House {
//    let address: String
//    let numberOfRooms: Int
//
//    init(address specifiedAddress: String, numberOfRooms specifiedNumberOfRooms: Int) {
//        address = specifiedAddress
//        numberOfRooms = specifiedNumberOfRooms
//    }
//}
//
//var myHouse = House (
//    address: "123 central st.",
//    numberOfRooms: 1
//)
//myHouse.address
//
//
//
//class Dragon {
//    var lengthOfWing: Int
//    var spanOfWings: Int {
//        get {
//            // This computed property is based on wingLength.
//            return lengthOfWing * 2
//        }
//        set(setValue) {
//            // Store the results of a computed property.
//            lengthOfWing = setValue / 2
//        }
//    }
//    init() {
//        lengthOfWing = 0
//    }
//}
//
//var myDragon = Dragon()
//myDragon.lengthOfWing
//myDragon.spanOfWings = 8
//myDragon.spanOfWings
