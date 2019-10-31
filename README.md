
## Protocols Lab

## Instructions for lab submission

1. Fork the assignment repo
1. Clone your Fork to your machine
1. Complete the lab
1. Push your changes to your Fork
1. Submit a Pull Request back to the assignment repo
1. Paste a link of the pull request on Canvas and submit


<br>

> Questions adapted from [Swift student lessons: 4 - Tables and Persistence -> 1 - Protocols](https://developer.apple.com/go/?id=app-dev-swift-student)

## Question 1

a. Create a `Human` class with two properties:
- `name` of type String
- `age` of type Int.

Then create an initializer for the class and create two `Human` instances.

```swift
class Human {
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

let ahad = Human(name: "Ahad", age: 22)
let eddie = Human(name: "Edward", age: 21)
```
b. Make the `Human` class adopt the CustomStringConvertible protocol. Then print both of your previously initialized
`Human` objects.

```swift
class Human: CustomStringConvertible {
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

print(ahad) //Prints Human(name: Ahad, age: 22)
print(eddie) //Prints Human(name: Edward, age: 21)
```
c. Make the `Human` class adopt the Equatable protocol. Two instances of `Human` should be considered equal
if their names and ages are identical to one another. Print the result of a boolean expression
evaluating whether or not your two previously initialized `Human` objects are equal to eachother
(using ==). Then print the result of a boolean expression evaluating whether or not your two
previously initialized `Human` objects are not equal to eachother (using !=).
```swift
class Human: CustomStringConvertible, Equatable {
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
print(ahad == eddie) //Prints false
```

d. Make the `Human` class adopt the `Comparable` protocol. One `Human` is greater than another `Human` if its age is bigger. Create another
three instances of a `Human`, then create an array called people of type [`Human`] with all of the
`Human` objects that you have initialized.

Create a new array called sortedPeople of type [`Human`] that is the people array sorted by age.

</br> </br>
```swift
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
```

## Question 2

a. Create a protocol called `Vehicle` with two requirements:
- a nonsettable `numberOfWheels` property of type Int,
- a function called drive().

```swift
protocol Vehicle {
    var numberOfWheels: Int { get }
    
    func drive()
}
```

b. Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4,
and drive() should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels,
then call drive().

```swift
struct Car: Vehicle {
var numberOfWheels: Int { 4 }    
    func drive() {
        print("Vroom, vroom!")
    }
}

let modelX = Car()
print(modelX.numberOfWheels)
modelX.drive()
```

c. Define a Bike struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 2,
and drive() should print "Begin pedaling!". Create an instance of Bike, print its number of wheels,
then call drive().

```swift
struct Bike: Vehicle {
    var numberOfWheels: Int { 2 }
    
    func drive() {
        print("Begin pedaling")
    }
}

let cycleBugatti = Bike()
print(cycleBugatti.numberOfWheels)
cycleBugatti.drive()
```
</br> </br>


## Question 3
// Given the below two protocols, create a struct for penguin(a flightless bird) and an eagle.

Give your structs some properties and have them conform to the appropriate protocols.

```swift
protocol Bird {
 var name: String { get }
 var canFly: Bool { get }
}

protocol Flyable {
 var airspeedVelocity: Double { get }
}
```
answer:
```swift
struct Penguin: Bird {
    let name: String = "Penguin"
    let canFly: Bool = false
}

struct Eagle: Bird,Flyable {
    let canFly: Bool = true
    let airspeedVelocity: Double = 100.0
    let name: String = "Eagle"
}
```
</br> </br>

## Question 4

a. Create a protocol called `Transformation`.  The protocol should specify a mutating method called transform

```swift
protocol Transformation {
    mutating func transform()
}
```
b. Make an enum called `SuperHero` that conforms to `Transformation` with cases `notHulk` and `hulk`
```swift
enum Superhero: Transformation {
    case notHulk
    case Hulk
    
    mutating func transform() {
    }
}
```
c. Create an instance of it named `bruceBanner`. Make it so that when the transform function is called that bruceBanner turns from
`.notHulk` to `.hulk.``

```swift
enum SuperHero: Transformation {
    // write code here.
}

// Example Output:
var bruceBanner = SuperHero.notHulk

bruceBanner.transform() . // hulk

bruceBanner.transform()  // notHulk
```

answer:
```swift
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
```
</br> </br>


## Question 5

a. Create a protocol called `Communication`
```swift
protocol Communication {
}
```

b. Give it a property called `message`, of type String, and assign it an explicit getter.
```swift
protocol Communication {
    var message: String { get }
}
```
c. Create three Classes. `Cow`, `Dog`, `Cat`.
```swift
class Cow {
}
class Dog {
}
class Cat {
}
```
d. Have your three classes conform to `Communication`
```swift
class Cow: Communication {
    var message: String
}
class Dog: Communication {
    var message: String
}
class Cat: Communication {
    var message: String
}
```
e. `message` should return a unique message for each animal when talk is called.
```swift
class Cow: Communication {
    var message: String = "Moo"
}
class Dog: Communication {
    var message: String = "Woof"
}
class Cat: Communication {
    var message: String = "MeeeEOWWWWW"
}

```
f. Put an instance of each of your classes in an array.
```swift
let animalArray = [Dog(), Cat(), Cow()] as [Any]
```
g. Iterate over the array and have them print their `message` property
```swift
for animal in animalArray {
    print((animal as? Dog)?.message)
    print((animal as? Cat)?.message)
    print((animal as? Cow)?.message)
}
```

## Question 6

The HeartRateReceiver class below represents a very simplified example of a class dedicated to receiving information from fitness tracking hardware with monitoring heart rate. The function startHeartRateMonitoringExample will generate random heart rates and assign them to currentHR, simulating how an instance of HeartRateReceiver may pick up on new heart rate readings at specific intervals.

HeartRateViewController below is a view controller that will present the heart rate information to the user. Throughout the exercises below you'll use the delegate pattern to pass information from an instance of HeartRateReceiver to the view controller so that anytime new information is obtained it is presented to the user.

```swift
class HeartRateReceiver {
    var currentHR: Int? {
        didSet {
            if let currentHR = currentHR {
                print("The most recent heart rate reading is \(currentHR).")
            } else {
                print("Looks like we can't pick up a heart rate.")
            }
        }
    }

    func startHeartRateMonitoringExample() {
        for _ in 1...10 {
            let randomHR = 60 + Int.random(in: 0...15)
            currentHR = randomHR
            Thread.sleep(forTimeInterval: 2)
        }
    }
}

class HeartRateViewController: UIViewController {
    var heartRateLabel: UILabel = UILabel()
}
```

First, create an instance of HeartRateReceiver and call startHeartRateMonitoringExample. Notice that every two seconds currentHR get set and prints the new heart rate reading to the console.
```swift
let ahadsHeart = HeartRateReceiver()
ahadsHeart.startHeartRateMonitoringExample()
```
In a real app, printing to the console does not show information to the user. You need a way of passing information from the HeartRateReceiver to the HeartRateViewController. To do this, create a protocol called HeartRateReceiverDelegate that requires a method heartRateUpdated(to bpm:) where bpm is of type Int and represents the new rate as beats per minute. Since playgrounds read from top to bottom and the two previously declared classes will need to use this protocol, you'll need to declare this protocol above the declaration of HeartRateReceiver.
```swift
protocol HeartRateReceiverDelegate {
    func heartRateUpdated(to bpm: Int)
}
```
Now make HeartRateViewController adopt the protocol you've just created. Inside the body of the required method you should set the text of heartRateLabel and print "The user has been shown a heart rate of <INSERT HEART RATE HERE>."
```swift
class HeartRateViewController: UIViewController, HeartRateReceiverDelegate {

    var heartRateLabel: UILabel = UILabel()
    
    func heartRateUpdated(to bpm: Int) {
        heartRateLabel.text = "The user has been shown a heart rate of \(bpm)"
        print("The user has been shown a heart rate of \(bpm)")
    }
}
```

Now add a property called delegate to HeartRateReceiver that is of type HeartRateReceiverDelegate?. In the didSet of currentHR where currentHR is successfully unwrapped, call heartRateUpdated(to bpm:) on the delegate property.
```swift
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
```

Finally, return to the line of code just after you initialized an instance of HeartRateReceiver. Initialize an instance of HeartRateViewController. Then, set the delegate property of your instance of HeartRateReceiver to be the instance of HeartRateViewController that you just created. Wait for your code to compile and observe what is printed to the console. Every time that currentHR gets set, you should see both a printout of the most recent heart rate, and the print statement stating that the heart rate was shown to the user.

```swift
let ahadsHeart = HeartRateReceiver()
let myBleedingHeart = HeartRateViewController()
ahadsHeart.delegate = myBleedingHeart
ahadsHeart.startHeartRateMonitoringExample()
```
