//: Playground - noun: a place where people can play

import UIKit
import Foundation

//create a protocol that allows us to work with a types properties and methods (the types interface)
protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    
    func label(forColumn column: Int) -> String
    
    func itemFor(row: Int, column: Int) -> String
}

func printTable(_ dataSource: TabularDataSource) {
    
    //create first row containing column headers
    var firstRow = "|"
    
    //keep track of the width of each column
    var columnWidths = [Int]()

    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        let columnHeader = " \(columnLabel) |"
        firstRow += columnHeader
        columnWidths.append(columnLabel.characters.count)
    }
    print(firstRow)

    for i in 0 ..< dataSource.numberOfRows {
        var out = "|"
        
        for j in 0 ..< dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = columnWidths[j] - item.characters.count
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        
        print(out)
    }
    
}

//create struct of our models
struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource, CustomStringConvertible { //make Department model conform to TabularDataSource protocol - now Department needs to have all the required properties and methods required by the TabularDataSource protocal
    let name: String
    var people = [Person]() //initialize new instance
    
    var description: String { //add aditional property required for CustomStringConvertible protocal
        return "Department (\(name))"
    }
    
    
    init(name: String) { //initialize name property
        self.name = name
    }
    
    mutating func add(_ person: Person) { //mutating function that'll thange the people property
        people.append(person)
    }
    
    var numberOfRows: Int {
        return people.count //return number of persons
    }
    
    var numberOfColumns: Int {
        return 3  //return number of persons properties
    }
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0:
            return "Employee Name"
        case 1:
            return "Age"
        case 2:
            return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0:
            return person.name
        case 1:
            return String(person.age)
        case 2:
            return String(person.yearsOfExperience)
        default: fatalError("Invalid column!")
        }
    }

}

var department = Department(name: "Engineering") //create new instance of Department named Engineering

//create new Person types and append them to the new department team
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 40, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))


printTable(department)
print(department)




