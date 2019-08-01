import UIKit

//Question 1.
//Create a Human class with two properties: name of type String, and age of type Int. You'll need to create a memberwise initializer for the class. Initialize two Human instances.

//class Human {
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//var sunni = Human(name: "Sunni", age: 27)
//var ginger = Human(name: "Ginger", age: 30)

//Make the Human class adopt the CustomStringConvertible. Print both of your previously initialize Human objects.

//class Human: CustomStringConvertible {
//    var name: String
//    var age: Int
//
//    var description: String
//
//    init(name: String, age: Int, description: String) {
//        self.name = name
//        self.age = age
//
//        self.description = description
//    }
//}
//
//var sunni = Human(name: "Sunni", age: 27, description: "The younger sister.")
//var ginger = Human(name: "Ginger", age: 30, description: "The older sister.")
//
//print(sunni)
//print(ginger)

//Make the Human class adopt the Equatable protocol. Two instances of Human should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized Human objects are equal to eachother (using ==). Then print the result of a boolean expression evaluating whether or not your two previously initialized Human objects are not equal to eachother (using !=).

//class Human: CustomStringConvertible, Equatable {
//    var name: String
//    var age: Int
//
//    var description: String
//
//    init(name: String, age: Int, description: String) {
//        self.name = name
//        self.age = age
//
//        self.description = description
//    }
//
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return  lhs.name == rhs.name &&
//                lhs.age == rhs.age
//    }
//}
//
//var sunni = Human(name: "Sunni", age: 27, description: "The younger sister.")
//var ginger = Human(name: "Ginger", age: 30, description: "The older sister.")
//
//print(sunni == ginger)
//print(sunni.age == ginger.age)


// Make the Human class adopt the Comparable protocol. Sorting should be based on age. Create another three instances of a Human, then create an array called people of type [Human] with all of the Human objects that you have initialized. Create a new array called sortedPeople of type [Human] that is the people array sorted by age.

//class Human: CustomStringConvertible, Equatable, Comparable {
//    var name: String
//    var age: Int
//
//    var description: String
//
//    init(name: String, age: Int, description: String) {
//        self.name = name
//        self.age = age
//
//        self.description = description
//    }
//
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return  lhs.name == rhs.name &&
//                lhs.age == rhs.age
//    }
//
//    static func < (lhs: Human, rhs: Human) -> Bool {
//        return lhs.age < rhs.age
//    }
//}
//
//var sunni = Human(name: "Sunni", age: 27, description: "The younger sister.")
//var ginger = Human(name: "Ginger", age: 30, description: "The older sister.")
//var alyson = Human(name: "Alyson", age: 52, description: "She told me she's 52.")
//var iram = Human(name: "Iram", age: 83, description: "He said whatever you think is appropriate and I said 'that's not an int'.")
//var david = Human(name: "David", age: 30, description: "I think.")
//
//var humanArray:[Human] = [sunni,ginger,alyson,iram,david]
//
//var sortedHumans = humanArray.sorted()



//Question 2.
//Create a protocol called Vehicle with two requirements: a nonsettable numberOfWheels property of type Int, and a function called drive().

//protocol Vehicle {
//    var numberOfWheels: Int { get }
//
//    func drive()
//}

//Define a Car struct that implements the Vehicle protocol. numberOfWheels should return a value of 4, and drive() should print "Vroom, vroom!" Create an instance of Car, print its number of wheels, then call drive().

//struct Car: Vehicle {
//    let numberOfWheels: Int = 4
//
//    func drive() {
//        print("Vroom, vroom!")
//    }
//}
//
//let myCar = Car()
//print(myCar.numberOfWheels)
//myCar.drive()

//Define a Bike struct that implements the Vehicle protocol. numberOfWheels should return a value of 2, and drive() should print "Begin pedaling!". Create an instance of Bike, print its number of wheels, then call drive().

//struct Bike: Vehicle {
//    let numberOfWheels: Int = 2
//
//    func drive() {
//        print("Begin pedaling!")
//    }
//}
//
//let myBike = Bike()
//print(myBike.numberOfWheels)
//myBike.drive()


//Question 3.
// Given the below two protocols, create a struct for penguin(a flightless bird) and an eagle.
//Give your structs some properties and have them conform to the appropriate protocols.
//
//protocol Bird {
//    var name: String { get }
//    var canFly: Bool { get }
//}
//
//protocol Flyable {
//    var airspeedVelocity: Double { get }
//}
//
//struct Penguin: Bird {
//    let name: String = "Penguin"
//    let canFly: Bool = false
//}
//
//struct Eagle: Bird, Flyable {
//    let name: String = "Eagle"
//    let canFly: Bool = false
//
//    var airspeedVelocity: Double = 99.9
//}

//Question 4.
// Create a protocol called Transformation
// create a mutating method called transform

//protocol Transformation {
//    mutating func transform()
//}

// Make an enum called SuperHero (have it conform to Transformation) and an instance of it named bruceBanner. Make it so that when the transform function is called that bruceBanner turns from .notHulk to .hulk.

//enum SuperHero: Transformation {
//    case hulk
//    case notHulk
//
//    mutating func transform() {
//        switch self {
//            case .hulk:
//                self = .notHulk
//            case .notHulk:
//                self = .hulk
//        }
//    }
//}
//
//var bruceBanner = SuperHero.notHulk
//bruceBanner.transform()
//bruceBanner.transform()
//
//
//Example Output:
//var bruceBanner = SuperHero.notHulk
//
//bruceBanner.transform() . // hulk
//
//    bruceBanner.transform()  // notHulk




//Question 5.
// 1. Create a protocol called Communication

// 2. Give it a property called talk, of type String, and assign it an explicit getter.

// 3. Create three Classes. Cow, Dog, Cat.

// 4. Have your three classes conform to Communication

// 5. Talk should return a unique message for each animal when talk is called.

// 6. Put an instance of each of your Classes in an array.

// 7. Iterate over the array and have them print talk.

//protocol Communication {
//    var talk: String { get }
//}
//
//class Cow: Communication {
//    let talk: String = "Moo moo!"
//}
//
//class Dog: Communication {
//    let talk: String = "Bork!"
//}
//
//class Cat: Communication {
//    let talk: String = "Meow I'm the best!"
//}
//
//let mooMoo = Cow()
//let doggo = Dog()
//let bestPetEver = Cat()
//
//mooMoo.talk
//doggo.talk
//bestPetEver.talk
//
//let allTheSounds: [Communication] = [mooMoo,doggo,bestPetEver]
//
//for animal in allTheSounds {
//    print(animal.talk)
//}


//Question 6.

//The HeartRateReceiver class below represents a very simplified example of a class dedicated to receiving information from fitness tracking hardware with monitoring heart rate. The function startHeartRateMonitoringExample will generate random heart rates and assign them to currentHR, simulating how an instance of HeartRateReceiver may pick up on new heart rate readings at specific intervals.

//HeartRateViewController below is a view controller that will present the heart rate information to the user. Throughout the exercises below you'll use the delegate pattern to pass information from an instance of HeartRateReceiver to the view controller so that anytime new information is obtained it is presented to the user.
//
//class HeartRateReceiver {
//    var currentHR: Int? {
//        didSet {
//            if let currentHR = currentHR {
//                print("The most recent heart rate reading is \(currentHR).")
//            } else {
//                print("Looks like we can't pick up a heart rate.")
//            }
//        }
//    }
//
//    func startHeartRateMonitoringExample() {
//        for _ in 1...10 {
//            let randomHR = 60 + Int.random(in: 0...15)
//            currentHR = randomHR
//            Thread.sleep(forTimeInterval: 2)
//        }
//    }
//}
//
//class HeartRateViewController: UIViewController {
//    var heartRateLabel: UILabel = UILabel()
//}
//First, create an instance of HeartRateReceiver and call startHeartRateMonitoringExample. Notice that every two seconds currentHR get set and prints the new heart rate reading to the console.
//
//In a real app, printing to the console does not show information to the user. You need a way of passing information from the HeartRateReceiver to the HeartRateViewController. To do this, create a protocol called HeartRateReceiverDelegate that requires a method heartRateUpdated(to bpm:) where bpm is of type Int and represents the new rate as beats per minute. Since playgrounds read from top to bottom and the two previously declared classes will need to use this protocol, you'll need to declare this protocol above the declaration of HeartRateReceiver.
//
//Now make HeartRateViewController adopt the protocol you've just created. Inside the body of the required method you should set the text of heartRateLabel and print "The user has been shown a heart rate of ."
//
//Now add a property called delegate to HeartRateReceiver that is of type HeartRateReceiverDelegate?. In the didSet of currentHR where currentHR is successfully unwrapped, call heartRateUpdated(to bpm:) on the delegate property.
//
//Finally, return to the line of code just after you initialized an instance of HeartRateReceiver. Initialize an instance of HeartRateViewController. Then, set the delegate property of your instance of HeartRateReceiver to be the instance of HeartRateViewController that you just created. Wait for your code to compile and observe what is printed to the console. Every time that currentHR gets set, you should see both a printout of the most recent heart rate, and the print statement stating that the heart rate was shown to the user.
