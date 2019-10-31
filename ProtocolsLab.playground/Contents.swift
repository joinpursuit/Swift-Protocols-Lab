import UIKit

var str = "Hello, playground"

class Human: CustomStringConvertible, Equatable, Comparable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        if lhs.age < rhs.age {
            return true
        } else {
            return false
        }
    }
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        if lhs.age != rhs.age || lhs.name != rhs.name {
            return false
        } else {
            return true
        }
    }
    
    let name: String
    let age: Int
    var description: String { "Human(name: \(name), age: \(age))" }
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let ahad = Human(name: "Ahad", age: 22)
let eddie = Human(name: "Edward", age: 21)
let howard = Human(name: "Howard", age: 30)
let jeffers = Human(name: "Jeffrey", age: 32)
let greg = Human(name: "Gregory", age: 34)
let kelby = Human(name: "Kelby", age: 36)
let jon = Human(name: "Jon", age: 40)

let sortedPeople: [Human] = [ahad, howard, eddie, jeffers, greg, kelby, jon].sorted()
print(ahad) //Prints Human(name: Ahad, age: 22)
print(eddie) //Prints Human(name: Edward, age: 21)
print(ahad == eddie) //Prints false
print(ahad > eddie) //Prints true
