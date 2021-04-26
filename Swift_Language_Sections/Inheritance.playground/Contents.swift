import UIKit


//inheriting/ sub-classing allows us to inherit the properties and methods from another class (also known as the super class / parent class)

//NOTES: Superclasses are broad, subclasses are specific. "Override" will override the superclass property/ method. "Super" will call the superclasses property/ method. "final" makes the class un-subclassable

//example
//class Character {
//    var name = String()
//    var walk = String()
//    
//    func description() {
//        print("Hello, my name is \(name)")
//    }
//}
//
//class Villager : Character {
//    var trade = String()
//    var village = String()
//    
//    override func description() {
//        print("Hello, my name is \(name) and I am a \(trade) in \(village)")
//    }
//}
//
//class Wizard : Character {
//    var power = String()
//    
//    override func description() {
//        print("Hello, I am a wizard and my power is \(power)!")
//    }
//}
//
//var newCharacter = Wizard()
//newCharacter.power = "Swift"
//newCharacter.description()
//
//var character1 = Character()
//character1.name = "Bob"
//character1.description()

//example
//class Car {
//    var topSpeed = 100
//    
//    func driving() {
//        print("driving at \(topSpeed) miles an hour!")
//    }
//}
//
//class FutureCar : Car {
//    
//    //override function to overide the superclass property/ method
//    //use the super method to call the original super class properties/ method
//    override func driving() {
//        print("now driving at \(topSpeed + 100) miles an hour!!")
//    }
//    
//    func flying() {
//        print("we're flying!")
//    }
//}
//
////inheriting properties from the parent class
//let myCar = Car()
//myCar.topSpeed
//myCar.driving()
//
//let myFutureCar = FutureCar()
//myFutureCar.driving()

