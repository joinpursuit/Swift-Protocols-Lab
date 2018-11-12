
## Protocols Lab

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link of the pull request on Canvas and submit

<pre> 
Question 1.
Create a Human class with two properties: name of type String, and age of type Int. You'll need to 
create a memberwise initializer for the class. Initialize two Human instances.

Make the Human class adopt the CustomStringConvertible. Print both of your previously initialized
Human objects.

Make the Human class adopt the Equatable protocol. Two instances of Human should be considered equal
if their names and ages are identical to one another. Print the result of a boolean expression 
evaluating whether or not your two previously initialized Human objects are equal to eachother
(using ==). Then print the result of a boolean expression evaluating whether or not your two
previously initialized Human objects are not equal to eachother (using !=).

Make the Human class adopt the Comparable protocol. Sorting should be based on age. Create another
three instances of a Human, then create an array called people of type [Human] with all of the
Human objects that you have initialized. Create a new array called sortedPeople of type [Human] 
that is the people array sorted by age.

` ` ` swift

class Human: CustomStringConvertible, Equatable, Comparable {
var name: String
var age: Int
var description: String {
return "This person\'s name is \(name) and their age is \(age)."
}

init(name: String, age: Int) {
self.name = name
self.age = age
}
static func < (lhs: Human, rhs: Human) -> Bool {
return lhs.age < rhs.age
}

static func == (lhs: Human, rhs: Human) -> Bool {
return
lhs.name == rhs.name &&
lhs.age == rhs.age
}
}

let nathalie = Human(name: "Nathalie", age: 23)
let ekko = Human(name: "Ekko", age: 16)
print(nathalie)
print(ekko)

print(nathalie == ekko)
print(nathalie != ekko)

let akali = Human(name: "Akali", age: 21)
let dumbledore = Human(name: "Dumbledore", age: 180)
let usagi = Human(name: "Usagi", age: 14)

let people = [akali, dumbledore, usagi]
let sortedPeople = people.sorted {$0 < $1}


` ` `

Question 2. 
Create a protocol called Vehicle with two requirements: a nonsettable numberOfWheels property of
type Int, and a function called drive().

Define a Car struct that implements the Vehicle protocol. numberOfWheels should return a value of 4,
and drive() should print "Vroom, vroom!" Create an instance of Car, print its number of wheels, 
then call drive().

Define a Bike struct that implements the Vehicle protocol. numberOfWheels should return a value of 2,
and drive() should print "Begin pedaling!". Create an instance of Bike, print its number of wheels,
then call drive().

` ` ` swift

protocol Vehicle {
var numberOfWheels: Int { get }
func drive()
}

struct Car: Vehicle {
var numberOfWheels: Int {
return 4
}
func drive() {
print("Vroom, vroom!")
}
}

let myCar = Car()
print(myCar.numberOfWheels)
(myCar.drive())

struct Bike: Vehicle {
var numberOfWheels: Int {
return 2
}
func drive() {
print("Begin pedaling!")
}
}

let harleyDavidson = Bike()

print(harleyDavidson.numberOfWheels)
(harleyDavidson.drive())
` ` `
Question 3. 
// Given the below two protocols, create a struct for penguin(a flightless bird) and an eagle.
Give your structs some properties and have them conform to the appropriate protocols.

protocol Bird {
 var name: String { get }
 var canFly: Bool { get }
}

protocol Flyable {
 var airspeedVelocity: Double { get }
}

` ` ` swift

protocol Bird {
var name: String { get }
var canFly: Bool { get }
}

protocol Flyable {
var airspeedVelocity: Double { get }
}

struct Penguin: Bird {
var name: String = "Penguin"
var canFly: Bool = false
}

struct Eagle: Bird, Flyable {
var name: String = "Eagle"
var canFly: Bool = true
var airspeedVelocity: Double = 89.89
}
` ` `
Question 4. 
// Create a protocol called Transformation

// create a mutating method called transform

// Make an enum called SuperHero (have it conform to Transformation) and an instance of it named
bruceBanner. Make it so that when the transform function is called that bruceBanner turns from 
.notHulk to .hulk.

enum SuperHero: Transformation {
    // write code here.
}

Example Output: 
var bruceBanner = SuperHero.notHulk

bruceBanner.transform() . // hulk

bruceBanner.transform()  // notHulk

` ` ` swift

protocol Transformation {

mutating func transform()
}

enum SuperHero: Transformation {
case notHulk
case hulk

mutating func transform()  {
switch self {
case .notHulk:
self = .hulk
print("HULK SMASH")
case .hulk:
self = .notHulk
print("not Hulk")
default:
print("whelp")

}
}
}

var bruceBanner = SuperHero.notHulk

bruceBanner.transform()

bruceBanner.transform()

` ` `


Question 5. 
// 1. Create a protocol called Communication

// 2. Give it a property called talk, of type String, and assign it an explicit getter.

// 3. Create three Classes. Cow, Dog, Cat.

// 4. Have your three classes conform to Communication

// 5. talk should return a unique message for each animal when talk is called.

// 6. Put an instance of each of your Classes in an array.

// 7. Iterate over the array and have them print talk.
</pre> 

` `  ` swift

protocol Communication {
var talk: String { get }
}

class Cow: Communication {
var talk: String {
return "I'm a lot smarter and empathetic than you think"
}
}

class Dog: Communication {
var talk: String {
return "I'll act like I haven't seen you in 10 years even though you just went to the deli"
}
}

class Cat: Communication {
var talk: String {
return "I'm super playful and cuddly but feed me or I'll kill you"
}
}

let beth = Cow()
let scooby = Dog()
let meowth = Cat()

` `  `
