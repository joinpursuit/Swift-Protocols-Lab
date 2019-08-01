
## Protocols Lab

## Instructions for lab submission 

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link of the pull request on Canvas and submit


Question 1.
Create a Human class with two properties: name of type String, and age of type Int. You'll need to 
create a memberwise initializer for the class. Initialize two Human instances.

Answer:
```swift
class Human {
var name: String
var age: Int

init(name: String, age: Int) {
self.name = name
self.age = age
}
}

var sunni = Human(name: "Sunni", age: 27)
var ginger = Human(name: "Ginger", age: 30)
```

Make the Human class adopt the CustomStringConvertible. Print both of your previously initialized
Human objects.

Answer:
```swift
class Human: CustomStringConvertible {
var name: String
var age: Int

var description: String

init(name: String, age: Int, description: String) {
self.name = name
self.age = age

self.description = description
}
}

var sunni = Human(name: "Sunni", age: 27, description: "The younger sister.")
var ginger = Human(name: "Ginger", age: 30, description: "The older sister.")

print(sunni)
print(ginger)
```

Make the Human class adopt the Equatable protocol. Two instances of Human should be considered equal
if their names and ages are identical to one another. Print the result of a boolean expression 
evaluating whether or not your two previously initialized Human objects are equal to eachother
(using ==). Then print the result of a boolean expression evaluating whether or not your two
previously initialized Human objects are not equal to eachother (using !=).

Answer:
```swift
class Human: CustomStringConvertible, Equatable {
var name: String
var age: Int

var description: String

init(name: String, age: Int, description: String) {
self.name = name
self.age = age

self.description = description
}

static func == (lhs: Human, rhs: Human) -> Bool {
return  lhs.name == rhs.name &&
lhs.age == rhs.age
}
}

var sunni = Human(name: "Sunni", age: 27, description: "The younger sister.")
var ginger = Human(name: "Ginger", age: 30, description: "The older sister.")

print(sunni == ginger)
print(sunni.age == ginger.age)
```

Make the Human class adopt the Comparable protocol. Sorting should be based on age. Create another
three instances of a Human, then create an array called people of type [Human] with all of the
Human objects that you have initialized. Create a new array called sortedPeople of type [Human] 
that is the people array sorted by age.

Answer:
```swift
class Human: CustomStringConvertible, Equatable, Comparable {
var name: String
var age: Int

var description: String

init(name: String, age: Int, description: String) {
self.name = name
self.age = age

self.description = description
}

static func == (lhs: Human, rhs: Human) -> Bool {
return  lhs.name == rhs.name &&
lhs.age == rhs.age
}

static func < (lhs: Human, rhs: Human) -> Bool {
return lhs.age < rhs.age
}
}

var sunni = Human(name: "Sunni", age: 27, description: "The younger sister.")
var ginger = Human(name: "Ginger", age: 30, description: "The older sister.")
var alyson = Human(name: "Alyson", age: 52, description: "She told me she's 52.")
var iram = Human(name: "Iram", age: 83, description: "He said whatever you think is appropriate and I said 'that's not an int'.")
var david = Human(name: "David", age: 30, description: "I think.")

var humanArray:[Human] = [sunni,ginger,alyson,iram,david]

var sortedHumans = humanArray.sorted()
```


Question 2. 
Create a protocol called Vehicle with two requirements: a nonsettable numberOfWheels property of
type Int, and a function called drive().

Answer:
```swift
protocol Vehicle {
var numberOfWheels: Int { get }

func drive()
}
```

Define a Car struct that implements the Vehicle protocol. numberOfWheels should return a value of 4,
and drive() should print "Vroom, vroom!" Create an instance of Car, print its number of wheels, 
then call drive().

Answer:
```swift
struct Car: Vehicle {
let numberOfWheels: Int = 4

func drive() {
print("Vroom, vroom!")
}
}
```

Define a Bike struct that implements the Vehicle protocol. numberOfWheels should return a value of 2,
and drive() should print "Begin pedaling!". Create an instance of Bike, print its number of wheels,
then call drive().

Answer:
```swift
struct Bike: Vehicle {
let numberOfWheels: Int = 2

func drive() {
print("Begin pedaling!")
}
}

let myBike = Bike()
print(myBike.numberOfWheels)
myBike.drive()
```


Question 3. 
Given the below two protocols, create a struct for penguin(a flightless bird) and an eagle.
Give your structs some properties and have them conform to the appropriate protocols.

protocol Bird {
 var name: String { get }
 var canFly: Bool { get }
}

protocol Flyable {
 var airspeedVelocity: Double { get }
}

Answer:
```swift
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

struct Eagle: Bird, Flyable {
let name: String = "Eagle"
let canFly: Bool = false

var airspeedVelocity: Double = 99.9
}
```

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

</br> </br> 

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


