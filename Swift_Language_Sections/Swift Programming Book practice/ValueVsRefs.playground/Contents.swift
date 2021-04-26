//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var playgroundGreeting = str
playgroundGreeting += "! How are you today?"
str

class GreekGod {
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct Pantheon {
    var chiefGod: GreekGod
}

let hecate: GreekGod = GreekGod(name: "Hecate")

let anotherHecate = hecate
anotherHecate.name = "AnotherHecate"

anotherHecate.name
hecate.name

let pantheon = Pantheon(chiefGod: hecate)
let zeus = GreekGod(name: "Zeus")
zeus.name = "Zeus Jr."

pantheon.chiefGod.name
let greekPantheon = pantheon
hecate.name = "Trivia"
greekPantheon.chiefGod.name

print(zeus.name)

let athena = GreekGod(name: "Athena")

let gods = [athena, hecate, zeus]
let godsCopy = gods
gods.last?.name = "Jupiter"
gods
godsCopy





