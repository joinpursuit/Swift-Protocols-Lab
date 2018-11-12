
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

"""
class Human: CustomStringConvertible, Equatable, Comparable {



var description: String {
return "This Human is \(name) and \(age) years old"
}
var name: String
var age: Int
init(name: String, age:Int){
self.name = name
self.age = age
}
static func == (lhs: Human, rhs: Human) -> Bool {
return
lhs.name == rhs.name && lhs.age == rhs.age
}
static func < (lhs: Human, rhs: Human) -> Bool {
return lhs.age < rhs.age
}
}

let myfirstHuman = Human(name: "Raymond Donkemezuo", age: 196)
let mySecondHuman = Human(name: "Gabriel Lee", age: 86)
let myThirdHuman = Human(name: "Alice", age: 79)
let myFourthHuman = Human(name: "Alice jnr", age: 2)
let myFifthHuman = Human(name: "Alvin", age: 2)

if myfirstHuman == mySecondHuman {
print("Both humans are thesame person with thesame name and age")
} else if myfirstHuman != mySecondHuman {
print("Both humans are different with different names and ages")
}

var myArray = [Human]()
var sortedPeople:[Human] = [myfirstHuman, mySecondHuman, myThirdHuman, myFourthHuman, myFifthHuman].sorted{$0 < $1}
print(sortedPeople)

"""



</pre> 

</br> </br> 


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

"""
protocol Vehicle {
var numberOfWheels: Int {get}
func drive()
}
struct Car: Vehicle {
var numberOfWheels: Int
func drive() {
print("Vroom, vroom!")
}
}
let myDreamCar = Car(numberOfWheels: 4)
print("The number of wheels of my dream car is \(myDreamCar.numberOfWheels)")


struct Bike: Vehicle{
var numberOfWheels: Int
func drive() {
print("Begin pedaling!")
}
}

let myBike = Bike(numberOfWheels: 2)
print("The number of wheels of my bike is \(myBike.numberOfWheels)")

"""
</br> </br> 

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

"""

protocol Bird {
var name: String { get }
var canFly: Bool { get }
}

protocol Flyable {
var airspeedVelocity: Double { get }
}

struct fligthLessBird: Bird {
var name: String = "Dodo"

var canFly: Bool = false


}

struct eagle:Flyable {
var airspeedVelocity: Double = 3.142

}


"""

</br> </br> 

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


