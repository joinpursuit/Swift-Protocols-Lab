
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
</pre> 

</br>

class Human: CustomStringConvertible, Equatable, Comparable {
static func < (lhs: Human, rhs: Human) -> Bool {
return
lhs.age < rhs.age
}

static func == (lhs: Human, rhs: Human) -> Bool {
return
lhs.name == rhs.name &&
lhs.age == rhs.age
}

var description: String {
return "The human\'s name is \(name) and they are \(age) years old"
}

var name: String
var age: Int

init(name: String, age: Int) {
self.name = name
self.age = age
}
}

let matt = Human(name: "Matt", age: 25)
print(matt)

let kevin = Human(name: "Kevin", age: 28)
print(kevin)


if matt == kevin {
print("These two equal each other")
} else {
print("These two are not equal")
}

let sortedPeople = [matt, kevin].sorted {$0 < $1}
print(sortedPeople)


</br> 


<pre> 

Question 2. 
Create a protocol called Vehicle with two requirements: a nonsettable numberOfWheels property of
type Int, and a function called drive().

Define a Car struct that implements the Vehicle protocol. numberOfWheels should return a value of 4,
and drive() should print "Vroom, vroom!" Create an instance of Car, print its number of wheels, 
then call drive().

Define a Bike struct that implements the Vehicle protocol. numberOfWheels should return a value of 2,
and drive() should print "Begin pedaling!". Create an instance of Bike, print its number of wheels,
then call drive().
</pre>  

</br>
protocol Vehicle {
var numberOfWheels: Int {get}
func drive()
}

struct Car: Vehicle {
var numberOfWheels: Int = 4
func drive() {
print("Vroom, vroom!")
}
}

var honda = Car()
print(honda.numberOfWheels)
print(honda.drive())


struct Bike: Vehicle {
var numberOfWheels: Int = 2

func drive() {
print("Begin pedaling!")
}
}

var bike = Bike()
print(bike.numberOfWheels)
print(bike.drive())
</br> 

<pre> 

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
</pre> 

</br>

protocol Bird {
var name: String { get }
var canFly: Bool { get }
}

protocol Flyable {
var airspeedVelocity: Double { get }
}

struct Penguin: Bird, Flyable {
var name: String
var canFly: Bool
var airspeedVelocity: Double
}

struct Eagle: Bird, Flyable {
var name: String
var canFly: Bool
var airspeedVelocity: Double

}

</br> 

<pre>

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
</pre> 

</br> 
protocol Transformation {
mutating func transform()
}
enum SuperHero: Transformation {
case hulk
case notHulk
mutating func transform() {
switch self {
case .notHulk:
self = .hulk
case .hulk:
self = .notHulk
}
}
}
var bruceBanner = SuperHero.notHulk
bruceBanner.transform()
print(bruceBanner)
bruceBanner.transform()
print(bruceBanner)

</br> 

<pre>

Question 5. 
// 1. Create a protocol called Communication

// 2. Give it a property called talk, of type String, and assign it an explicit getter.

// 3. Create three Classes. Cow, Dog, Cat.

// 4. Have your three classes conform to Communication

// 5. talk should return a unique message for each animal when talk is called.

// 6. Put an instance of each of your Classes in an array.

// 7. Iterate over the array and have them print talk.
</pre> 

protocol Communication {
var talk: String {get}
}

class Cow: Communication {
var talk: String {
return "Moo!"
}
}

class Dog: Communication {
var talk: String {
return "Woof!"
}
}

class Cat: Communication {
var talk: String {
return "Meow!"
}
}

var cow = Cow()
var dog = Dog()
var cat = Cat()

let animalArray = [cow.talk, dog.talk, cat.talk]
animalArray.forEach {print($0)}



