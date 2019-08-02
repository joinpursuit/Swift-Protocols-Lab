import UIKit

//Question 1
//
//a. Create a `Human` class with two properties:
//- `name` of type String
//- `age` of type Int.

//Then create an initializer for the class and create two `Human` instances.

//class Human {
//
//    var name: String
//    var age: Int
//
//    init(name: String, age: Int) {
//        self.name = name
//        self.age = age
//    }
//}
//
//var mary = Human(name: "Mary", age: 51)
//let margaret = Human(name: "Margaret", age: 57)

//b. Make the `Human` class adopt the CustomStringConvertible protocol. Then print both of your previously initialized `Human` objects.

//class Human: CustomPlaygroundDisplayConvertible {

//    var name: String
//    var age: Int
//
//    var myRelationship: String
//
//    init(name: String, age: Int, myRelationship: String) {
//
//        self.name = name
//        self.age = age
//
//        self.myRelationship = myRelationship
//
//    }
//}
//
//var mary = Human(name: "Mary", age: 51, myRelationship: "My maternal grandmother.")
//var margaret = Human(name: "Margaret", age: 57, myRelationship: "My paternal grandmother.")
//
//print(mary)
//print(margaret)

//c. Make the `Human` class adopt the Equatable protocol. Two instances of `Human` should be considered equal if their names and ages are identical to one another. Print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are equal to each other (using ==). Then print the result of a boolean expression evaluating whether or not your two previously initialized `Human` objects are not equal to each other (using !=).

//class Human: CustomPlaygroundDisplayConvertible, Equatable {
//
//    var name: String
//    var age: Int
//
//    var myRelationship: String
//
//    init(name: String, age: Int, myRelationship: String) {
//        self.name = name
//        self.age = age
//
//        self.myRelationship = myRelationship
//    }
//
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//}
//
//var mary = Human(name: "Mary", age: 51, myRelationship: "My maternal grandmother.")
//
//var margaret = Human(name: "Margaret", age: 57, myRelationship: "My paternal grandmother.")
//
//print(mary == margaret)
//print(mary.age != margaret.age)

//d. Make the `Human` class adopt the `Comparable` protocol. One `Human` is greater than another `Human` if its age is bigger. Create another three instances of a `Human`, then create an array called people of type [`Human`] with all of the `Human` objects that you have initialized.

//class Human: CustomPlaygroundDisplayConvertible, Equatable, Comparable {
//    
//    var name: String
//    var age: Int
//    
//    var myRelationship: String
//    
//    init(name: String, age: Int, myRelationship: String) {
//        self.name = name
//        self.age = age
//        
//        self.myRelationship = myRelationship
//    }
//    
//    static func == (lhs: Human, rhs: Human) -> Bool {
//        return lhs.name == rhs.name && lhs.age == rhs.age
//    }
//}
//
//var mary = Human(name: "Mary", age: 51, myRelationship: "My maternal grandmother.")
//var carl = Human(name: "Carl", age: 51, myRelationship: "My maternal grandfather.")
//var margaret = Human(name: "Margaret", age: 57, myRelationship: "My paternal grandmother.")
//var frank = Human(name: "Frank", age: 64, myRelationship: "My favorite uncle.")
//var lewis = Human(name: "Lewis", age: 39, myRelationship: "One of my schoolmates from college.")
//
////Create a new array called sortedPeople of type [`Human`] that is the people array sorted by age.
//
//var humanArray: [Human] = [mary, carl, margaret, frank, lewis]
//
//var sortedHumans = humanArray


//Question 2

//a. Create a protocol called `Vehicle` with two requirements:
//- a nonsettable `numberOfWheels` property of type Int,
//- a function called drive().

//b. Define a `Car` struct that implements the `Vehicle` protocol. `numberOfWheels` should return a value of 4, and drive() should print "Vroom, vroom!" Create an instance of `Car`, print its number of wheels, then call drive().

