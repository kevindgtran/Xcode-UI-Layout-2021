import UIKit

//Very similar to structs as they're used in OOP to store information about an object. 
//Structs, Strings, Ints, Bool are value types (can be copied)
//Classes are reference type (referencing computer memory, can not be copied)

//When in doubt use structures


//class Movie {
//    //set initial values
//    var title = ""
//    var runningTime = 0
//}
////create new instance of Movie class
//var newMovie = Movie()
////update properties of class
//newMovie.runningTime = 200
//newMovie.title = "Terminator"

//create a blog class (object/ template), create a new instance and set a few of its values
//class BlogPost {
//    var title: String
//    var body: String
//    var author: String
//    var numberOfComments: Int
//    
//    func addComments() {
//        numberOfComments += 1
//    }
//    
//    
//    init(title: String, body: String, author: String, numberOfComments: Int) {
//        self.title = title
//        self.body = body
//        self.author = author
//        self.numberOfComments = numberOfComments
//    }
//}
//
//var SaturdaysBlog = BlogPost(title: "fundamentals!", body: "learning lots", author: "Ray Wenderlich.com", numberOfComments: 0)
//SaturdaysBlog.addComments()
//print(SaturdaysBlog.numberOfComments)
//
//var SundaysBlog = BlogPost(title: "more fundamentals", body: "more learning!", author: "Coding with Chris", numberOfComments: 0)

//classes need to have initial values, use the init method
//class Person {
//    var name: String
//    var age: Int
//    
//    //initialize the class properties
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//var Bob = Person(name: "Bob", age: 25)
//print(Bob.name)
