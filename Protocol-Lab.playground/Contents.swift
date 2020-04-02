import UIKit

//## Question 1
//
//a. Create a `Human` class with two properties:
//- `name` of type String
//- `age` of type Int.
//
//Then create an initializer for the class and create two `Human` instances.

class Human: CustomStringConvertible, Equatable, Comparable {
    static func < (lhs: Human, rhs: Human) -> Bool {
        return lhs.age < rhs.age
    }
    
    var name: String
    var age: Int
    var description: String {
        return "name is \(name) and age is \(age)"
    }
    static var people = [Human]()
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
        Human.people.append(self)
    }
     
    
    static func == (lhs: Human, rhs: Human) -> Bool {
        return lhs.name  == rhs.name && lhs.age == rhs.age
    }
}

let human1 = Human(name: "Adam", age: 21)
let human2 = Human(name: "Eva", age: 17)
let human3 = Human(name: "Misha", age: 13)
let human4 = Human(name: "Milana", age: 33)
let human5 = Human(name: "Gloria", age: 52)

if human1 == human2 {
    print("they are equal")
} else {
    print("they are not equal")
}

if human1 != human2 {
    print("they are not equal")
} else {
    print("they are equal")
}

if human1 < human2 {
    print("\(human2.name) is older that \(human1.name)")
} else {
    print("\(human1.name) is older that \(human2.name)")
}

let people = [human1, human2, human3, human4, human5]
let sortedPeople = Human.people.sorted(by: {$0.age < $1.age})
print(sortedPeople)

//b. Make the `Human` class adopt the CustomStringConvertible protocol. Then print both of your previously initialized
//`Human` objects.

 

//c. Make the `Human` class adopt the Equatable protocol. Two instances of `Human` should be considered equal
//if their names and ages are identical to one another. Print the result of a boolean expression
//evaluating whether or not your two previously initialized `Human` objects are equal to eachother
//(using ==). Then print the result of a boolean expression evaluating whether or not your two
//previously initialized `Human` objects are not equal to eachother (using !=).
//
//d. Make the `Human` class adopt the `Comparable` protocol. One `Human` is greater than another `Human` if its age is bigger. Create another
//three instances of a `Human`, then create an array called people of type [`Human`] with all of the
//`Human` objects that you have initialized.
//
//Create a new array called sortedPeople of type [`Human`] that is the people array sorted by age.


//## Question 2
//
//a. Create a protocol called `Vehicle` with two requirements:
//- a nonsettable `numberOfWheels` property of type Int,
//- a function called drive().

protocol Vehicle {
    var numberOfWheels: Int { get }
    
    func drive()
}

//b. Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4,
//and drive() should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels,
//then call drive().

struct Car: Vehicle {
    var numberOfWheels: Int {
        return 4
    }
    
    func drive() {
        print("Vroom, wroom!")
    }
}

var myCar = Car()
print(myCar.numberOfWheels)

myCar.drive()


//c. Define a Bike struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2,
//and drive() should print "Begin pedaling!". Create an instance of Bike, print its number of wheels,
//then call drive().
//
//</br> </br>

struct Bike: Vehicle {
    var numberOfWheels: Int {
        return 2
    }
    
    func drive() {
        print("Begin padaling!")
    }
}


var myBike = Bike()
print(myBike.numberOfWheels)

myBike.drive()

//## Question 3
//// Given the below two protocols, create a struct for penguin(a flightless bird) and an eagle.
//
//Give your structs some properties and have them conform to the appropriate protocols.
//
//```swift
protocol Bird {
 var name: String { get }
 var canFly: Bool { get }
}

protocol Flyable {
 var airspeedVelocity: Double { get }
}

struct Penguin: Bird {
    var name: String = "BlackBack"
    
    var canFly: Bool = false
}

struct Eagle: Bird, Flyable {
    var name: String = "Bald Eagle"
    
    var canFly: Bool = true
    
    var airspeedVelocity: Double = 40.5 // miles per hour
}
