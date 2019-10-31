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


protocol Vehicle {
    var numberOfWheels: Int { get }
    
    func drive()
}

struct Car: Vehicle {
    var numberOfWheels: Int { 4 }
    
    func drive() {
        print("Vroom, vroom!")
    }
}

let modelX = Car()
print(modelX.numberOfWheels)
modelX.drive()

struct Bike: Vehicle {
    var numberOfWheels: Int { 2 }
    
    func drive() {
        print("Begin pedaling")
    }
}

let cycleBugatti = Bike()
print(cycleBugatti.numberOfWheels)
cycleBugatti.drive()

protocol Bird {
    var name: String { get }
    var canFly: Bool { get }
}

protocol Flyable {
    var airspeedVelocity: Double { get }
}

struct Penguin: Bird {
    let name: String = "Penguin"
    let canFly: Bool = false
}

struct Eagle: Bird,Flyable {
    let canFly: Bool = true
    let airspeedVelocity: Double = 100.0
    let name: String = "Eagle"
}

protocol Transformation {
    mutating func transform()
}

enum Superhero: Transformation {
    case notHulk
    case Hulk
    
    mutating func transform() {
        if self == .notHulk {
            self = .Hulk
        } else {
            self = .notHulk
        }
    }
}

var bruceBanner = Superhero.notHulk
bruceBanner.transform()
bruceBanner.transform()


protocol Communication {
    var message: String { get }
}

class Animal {
}

class Cow: Communication {
    var message: String { "Moo" }
}
class Dog: Communication {
    var message: String { "Woof"}
}
class Cat: Communication {
    var message: String {
        return "Meow"
    }
}

let animalArray = [Dog(), Cat(), Cow()] as [Any]
for animal in animalArray {
    print((animal as? Dog)?.message)
    print((animal as? Cat)?.message)
    print((animal as? Cow)?.message)

}

protocol HeartRateReceiverDelegate {
    func heartRateUpdated(to bpm: Int)
}

class HeartRateReceiver {
    var currentHR: Int? {
        didSet {
            if let currentHR = currentHR {
                print("The most recent heart rate reading is \(currentHR)")
                delegate?.heartRateUpdated(to: currentHR)
            } else {
                print("Looks like we can't pick up a heart rate")
            }
        }
    }
    var delegate: HeartRateReceiverDelegate?
    
    func startHeartRateMonitoringExample() {
        for _ in 1...10 {
            let randomHR = 60 + Int.random(in: 0...15)
            currentHR = randomHR
            Thread.sleep(forTimeInterval: 2)
        }
    }
}

class HeartRateViewController: UIViewController, HeartRateReceiverDelegate {

    var heartRateLabel: UILabel = UILabel()
    
    func heartRateUpdated(to bpm: Int) {
        heartRateLabel.text = "The user has been shown a heart rate of \(bpm)"
        print("The user has been shown a heart rate of \(bpm)")
    }
}

let ahadsHeart = HeartRateReceiver()
let myBleedingHeart = HeartRateViewController()
ahadsHeart.delegate = myBleedingHeart
ahadsHeart.startHeartRateMonitoringExample()
