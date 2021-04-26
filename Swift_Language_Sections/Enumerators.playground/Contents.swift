import UIKit

//create enum with 3 cases
//enum Computer {
//    case air
//    case macbook
//    case macbookPro
//    case imac
//}

//create new instance of enum, long form declaration and initialization, type inference
//let myLaptop: Computer = Computer.macbookPro
//let myOldLaptop: Computer = .macbook

//switch through enum for value, print to console result, see error for non-exhaustive switch statement (missing case in enum)
//switch myLaptop {
//case .air:
//    print("air")
//case .macbook:
//    print("macbook")
//case .macbookPro:
//    print("macbook pro")
//case .imac:
//    print("imac")
//}

//new enum with default int raw values, print raw value expression to console, explicit Int raw values
//enum Family: Int {
//    case Kevin
//    case Marlene
//    case Mochi
//}

//print("\(Family.Kevin) is \(Family.Kevin.rawValue) in line")
//print("\(Family.Marlene) is \(Family.Marlene.rawValue) in line")

//enum Coffee: Int {
//    case small    = 3
//    case medium   = 4
//    case large    = 5
//}

//print("The \(Coffee.small) is $\(Coffee.small.rawValue).00")
//print("The \(Coffee.medium) is $\(Coffee.medium.rawValue).00")
//print("The \(Coffee.large) is $\(Coffee.large.rawValue).00")

//new enum with string raw values, default and explicit
//enum Phones: String {
//    case iphone    = "Best phone ever!"
//    case android
//    case samsung
//}

//let myPhone: Phones = .iphone

//switch myPhone {
//case .iphone:
//    print("I have the \(myPhone.rawValue)")
//case .android:
//    print("an \(Phones.android.rawValue)")
//case .samsung:
//    print("an \(Phones.samsung.rawValue)")
//}

//book examples
//create method in enum
enum lightbulb {
    case on
    case off
    
    func surfaceTemperature(forAmbientTemperature ambient: Double) -> Double {
        switch self {
        case .on:
            return ambient + 150
        case .off:
            return ambient
        }
    }

    //create toggle function to toggle between both enu cases, add mutating keyword b/c enums are value types and needed to modify case values
    mutating func toggle() {
        switch self {
        case .on:
            self = .off
        case .off:
            self = .on
        }
    }

}

//create new instance of enum, call surfaceTemperature and pass in values
var bulb = lightbulb.on
let ambientTemperature = 77.0

var bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("the bulb's temperature is \(bulbTemperature)")

//call toggle enum method
bulb.toggle()
bulbTemperature = bulb.surfaceTemperature(forAmbientTemperature: ambientTemperature)
print("The bulb's temperature is \(bulbTemperature)")

//ASSOCIATED VALUES
enum ShapeDimensions {
    //square's associated value is the length of one side
    case square(side: Double)

    //rectangle's associated value defines its width and height
    case rectangle(width: Double, height: Double)

    //function to compute area
    func area() -> Double {
        switch self {
        case let .square(side: side):
            return side * side
        case let .rectangle(width: w, height: h):
            return w * h
        }
    }
}

//creating new instance of ShapeDimensions enum with associated values
var squareShape = ShapeDimensions.square(side: 10.0)
print(squareShape.area())

var rectShape = ShapeDimensions.rectangle(width: 5.0, height: 10)
print(rectShape.area())
