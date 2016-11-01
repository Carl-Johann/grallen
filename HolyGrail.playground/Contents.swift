//: Playground - noun: a place where people can play

import UIKit



//: ### NYTTIGE BEGREBER: | .isEmpty | .count | array.append("x") | array.insert("x", at: index) | array.remove(at: index) | let variabel/constant = array.removeLast() | for item in shoppingList { print(item) } | array.insert("x") | array.remove("x") | array.contains("x") | array.removeAll()

// på mange af dem ovenover som 'removeLast' kan man f.eks skrive | if let nyvariabel = array.removeLast("diller") | bliver nyvariabel's værdi "diller", og "diller" bliver selvfølgelig fjernet, og 'if' statementet er true. Hvis 'array' ikke indeholder "diller" er 'if' statementet false.


//: ### Constants og Variable
let maximumNumberOfLoginAttempts = 10
var currentLoginAttempt = 0

1 == 1   // true because 1 is equal to 1
2 != 1   // true because 2 is not equal to 1
2 > 1    // true because 2 is greater than 1
1 < 2    // true because 1 is less than 2
1 >= 1   // true because 1 is greater than or equal to 1
2 <= 1   // false because 2 is not less than or equal to 1

// man kan ændre varialbe
var friendlyWelcome = "Hello!"
friendlyWelcome = "Bonjour!"

// This is a compile-time error: languageName cannot be changed.
let languageName = "Swift"
//languageName = "Swift++"

// print
print(friendlyWelcome)


// Single line ting. Smart
let cat = "🐱"; print(cat)
// Prints "🐱"


// Man kan plusse Doubles (kommatal) og ikke-kommatal ved at gøre som nedenstående
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pi = Double(three) + pointOneFourOneFiveNine
// pi equals 3.14159, and is inferred to be of type Double




//: ### TUPLES

//TUPLES. Det er arrays med Int og Strings indeni
let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")

// Man kan tilgå TUPLES og lave en variabel der er = værdierne indeni den
let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

// .enumerated retunerer både index plads og selve 'valuen'.
// for (index, value) in shoppingList.enumerated() {
//    print("Item \(index + 1): \(value)")
// }

(1, "zebra") < (2, "apple")   // true because 1 is less than 2; "zebra" and "apple" are not compared
(3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
(4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"

let (x, y) = (1, 2)
// x is equal to 1, and y is equal to 2

//if x = y {
  // This is not valid, because x = y does not return a value.
// }

// Man kan tilgå TUPLES som alt andet
print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode)")
// Prints "The status code is 200"
print("The status message is \(http200Status.description)")
// Prints "The status message is OK"



//: ### OPTIONALS

// OPTIONALS | er en hvis en variabel kan være = nil eller en egentlig værdi. Hvis den er = nil og prøver at blive brugt, crasher programmet. Så man UNWRAPPER den inden.
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
// convertedNumber is inferred to be of type "Int?", or "optional Int"
var serverResponseCode: Int? = 404
// serverResponseCode contains an actual Int value of 404
serverResponseCode = nil
// serverResponseCode now contains no value
// If you define an optional variable without providing a default value, the variable is automatically set to nil for you:

// UNWRAPPING af optionals
// if let constantName = someOptional {
//    statements
// }

// FORCED UNWRAPING | Her tjekker man om convertedNumber har en værdi.
if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}
// Prints "convertedNumber contains some integer value.

// OPTIONAL BINDING | Den bedste måde at UNWRAPPE på
if let actualNumber = Int(possibleNumber) {
    print("\"\(possibleNumber)\" has an integer value of \(actualNumber)")
} else {
    print("\"\(possibleNumber)\" could not be converted to an integer")
}
// Prints ""123" has an integer value of 123"

// if let constantName = someOptional {
//    statements
// }

let possibleString: String? = "An optional string."
let forcedString: String = possibleString! // requires an exclamation mark

let assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // no need for an exclamation mark


//: ### Array
var shoppingList = ["Eggs", "Milk"]


// Set. De kan kun indehole én instance af et object. hvis man .inserter "Rock" til favoriteGenres vil den ikke blive addet. De er også tilfældige.
var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
favoriteGenres.insert("Rock")
print(favoriteGenres)

// linket illustrer godt, det der står nedenunder: https://developer.apple.com/library/content/documentation/Swift/Conceptual/Swift_Programming_Language/Art/setVennDiagram_2x.png

// Use the set.intersection(andet_set) method to create a new set with only the values common to both sets.
// Use the set.symmetricDifference(andet_set) method to create a new set with values in either set, but not both.
// Use the set.union(andet_set) method to create a new set with all of the values in both sets.
// Use the set.subtracting(andet_set) method to create a new set with values not in the specified set.

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

oddDigits.union(evenDigits).sorted()
// [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
oddDigits.intersection(evenDigits).sorted()
// []
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()
// [1, 9]
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()
// [1, 2, 9]

// Use the “is equal” operator (==) to determine whether two sets contain all of the same values.
// Use the isSubset(of:) method to determine whether all of the values of a set are contained in the specified set.
// Use the isSuperset(of:) method to determine whether a set contains all of the values in a specified set.
// Use the isStrictSubset(of:) or isStrictSuperset(of:) methods to determine whether a set is a subset or superset, but not equal to, a specified set.
// Use the isDisjoint(with:) method to determine whether two sets have any values in common.
let houseAnimals: Set = ["🐶", "🐱"]
let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]

houseAnimals.isSubset(of: farmAnimals)
// true
farmAnimals.isSuperset(of: houseAnimals)
// true
farmAnimals.isDisjoint(with: cityAnimals)
// true

// Dictionary er en ting der indeholder par. En værdi og dens værdi.
// [key 1: value 1, key 2: value 2, key 3: value 3]
var namesOfIntegers = [Int: String]()
// namesOfIntegers is an empty [Int: String] dictionary

namesOfIntegers[16] = "sixteen"
// namesOfIntegers now contains 1 key-value pair
namesOfIntegers = [:]
// namesOfIntegers is once again an empty dictionary of type [Int: String]

var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
// The airports dictionary is declared as having a type of [String: String], which means “a Dictionary whose keys are of type String, and whose values are also of type String”.


//: ### CONTROL FLOW    |  SWITCH

// For loop
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// Her er det hvis man gå igennem power, men ikke har brug for et variabelnavn.
let base = 3
let power = 10
var answer = 1
for _ in 1...power {
    answer *= base
}
print("\(base) to the power of \(power) is \(answer)")
// Prints "3 to the power of 10 is 59049"

// For i tuples
let numberOfLegs = ["spider": 8, "ant": 6, "cat": 4]
for (animalName, legCount) in numberOfLegs {
    print("\(animalName)s have \(legCount) legs")
}
// ants have 6 legs
// spiders have 8 legs
// cats have 4 legs

let finalSquare = 25
var board = [Int](repeating: 0, count: finalSquare + 1)
board[03] = +08; board[06] = +11; board[09] = +09; board[10] = +02
board[14] = -10; board[19] = -11; board[22] = -02; board[24] = -08

var square = 0
var diceRoll = 0
while square < finalSquare {
    // roll the dice
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    // move by the rolled amount
    square += diceRoll
    if square < board.count {
        // if we're still on the board, move up or down for a snake or a ladder
        square += board[square]
    }
}
print("Game over!")


// 'Switch'
// Navnet på 'switch' er en variabel i sig selv, der bliver matchet til alle 'case,'
// dog hvis ingen af 'case' er true så kører den 'default'. Hvis den ikke er blevet 'break' da.
let to = 2
let fire = 4
switch fire + to{
case 5:
    print("nope")
case 6:
    print("ja")
case 7:
    print("nej")
default:
    print("nopppe")
}


let someCharacter: Character = "z"
switch someCharacter {
case "a":
    print("The first letter of the alphabet")
case "z":
    print("The last letter of the alphabet")
default:
    print("Some other character")
}
// Prints "The last letter of the alphabet"


let approximateCount = 62
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default: naturalCount = "many"
}


// Med tuples. Brug underscore for at sammenligne med hvilken som helst værdi.
let somePoint = (0, 0)
switch somePoint {
case (0, 0):
    print("(0, 0) is at the origin")
case (_, 0):
    print("(\(somePoint.0), 0) is on the x-axis")
case (0, _):
    print("(0, \(somePoint.1)) is on the y-axis")
case (-2...2, -2...2):
    print("(\(somePoint.0), \(somePoint.1)) is inside the box")
default:
    print("(\(somePoint.0), \(somePoint.1)) is outside of the box")
}
// Prints "(1, 1) is inside the box"


// switch case can bind the value or values it matches to temporary constants or variables, for use in the body of the case. 
// This behavior is known as value binding.
// Her kigger 'case' på hvilket tal der er blåt. Så den første 'case' er true hvis andet tal i 'anotherPoint' er 0, og omvendt i 'case' nr. 2. 
// Tredje 'case' er true hvis ingen af 'anotherPoint's værdier er 0, fordi første og andet 'case' ikke er true.
let anotherPoint = (0,2)
switch anotherPoint {
case (let x, 0):
    print("On the x-axis with an x value of \(x)")
case (0, let y):
    print("On the y-axis with a y value of \(y)")
case let (x, y):
    print("Somewhere else at (\(x), \(y))")
}
// Prints "on the x-axis with an x value of 2"


// A switch case can use a where clause to check for additional conditions
// The example below categorizes an (x, y) point on the following graph:
let yetAnotherPoint = (1, -1)
switch yetAnotherPoint {
case let (x, y) where x == y:
    print("(\(x), \(y)) is on the line x == y")
case let (x, y) where x == -y:
    print("(\(x), \(y)) is on the line x == -y")
case let (x, y):
    print("(\(x), \(y)) is just some arbitrary point")
}
// Prints "(1, -1) is on the line x == -y"


let someCharacterr: Character = "e"
switch someCharacterr {
case "a", "e", "i", "o", "u":
    print("\(someCharacterr) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacterr) is a consonant")
default:
    print("\(someCharacterr) is not a vowel or a consonant")
}
// Prints "e is a vowel"


let stillAnotherPoint = (9, 0)
switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}
// Prints "On an axis, 9 from the origin"


// CONTINUE
// The continue statement tells a loop to stop what it is doing and start again at the beginning of the next iteration through the loop. It says “I
// Am done with the current loop iteration” without leaving the loop.
let puzzleInput = "great minds think alike"
var puzzleOutput = ""
let charactersToRemove: [Character] = ["a", "e", "i", "o", "u"]
for character in puzzleInput.characters {
    if charactersToRemove.contains(character) {
        continue
    } else {
        puzzleOutput.append(character)
    }
}
print(puzzleOutput)
// Prints "grtmndsthnklk"

// BREAK
// The break statement ends execution of an entire control flow statement immediately. 
// The break statement can be used inside a switch statement or loop statement when you want to terminate the execution of the switch or loop statement earlier
// Than would otherwise be the case.
let numberSymbol: Character = "三"  // Chinese symbol for the number 3
var possibleIntegerValue: Int?
switch numberSymbol {
case "1", "١", "一", "๑":
    possibleIntegerValue = 1
case "2", "٢", "二", "๒":
    possibleIntegerValue = 2
case "3", "٣", "三", "๓":
    possibleIntegerValue = 3
case "4", "٤", "四", "๔":
    possibleIntegerValue = 4
default:
    break
}
if let integerValue = possibleIntegerValue {
    print("The integer value of \(numberSymbol) is \(integerValue).")
} else {
    print("An integer value could not be found for \(numberSymbol).")
}
// Prints "The integer value of 三 is 3."

// FALLTHROUGH
// The fallthrough keyword does not check the case conditions for the switch case that it causes execution to fall into.
// The fallthrough keyword simply causes code execution to move directly to the statements inside the next case (or default case) block, as in C’s standard switch statement behavior.

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"
switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
default:
    description += " an integer."
}
print(description)
// Prints "The number 5 is a prime number, and also an integer."


// LABELED STATEMENTS
// A labeled statement is indicated by placing a label on the same line as the statement’s introducer keyword, followed by a colon.
gameLoop: while square != finalSquare {
    diceRoll += 1
    if diceRoll == 7 { diceRoll = 1 }
    switch square + diceRoll {
    case finalSquare:
        // diceRoll will move us to the final square, so the game is over
        break gameLoop
    case let newSquare where newSquare > finalSquare:
        // diceRoll will move us beyond the final square, so roll again
        continue gameLoop
    default:
        // this is a valid move, so find out its effect
        square += diceRoll
        square += board[square]
    }
}
print("Game over!")

// A guard statement, like an if statement, executes statements depending on the Boolean value of an expression.
// You use a guard statement to require that a condition must be true in order for the code after the guard statement to be executed. 
// Unlike an if statement, a guard statement always has an else clause—the code inside the else clause is executed if the condition is not true.
func greet(person: [String: String]) {
    guard let name = person["name"] else {
        return
    }
    
    print("Hello \(name)!")
    
    guard let location = person["location"] else {
        print("I hope the weather is nice near you.")
        return
    }
    
    print("I hope the weather is nice in \(location).")
}

greet(person: ["name": "John"])
// Prints "Hello John!"
// Prints "I hope the weather is nice near you."
greet(person: ["name": "Jane", "location": "Cupertino"])
// Prints "Hello Jane!"
// Prints "I hope the weather is nice in Cupertino."



//: ### FUNCTIONS
// Ligesom def i ruby/python | Navn: greet | Arguments: person | Return type: String, det er den efter pilen, dog ikke nødvendigt at skrive. Man behøver ikke at skrive 'return hvis det er sidste linje, ligesom i ruby.
func greet(person: String) -> String {
    let greeting = "Hello, \(person)!"
    return greeting
}

// Forkortet version
func greetAgain2(person: String) -> String {
    return "Hello, \(person)!"
}

// Hvordan man printer en func
print(greet(person: "Anna"))
print(greet(person: "Dickbutt"))

func greet3(person: String, alreadyGreeted: Bool) -> String {
    if alreadyGreeted {
        return greetAgain2(person: person)
    } else {
        return greet(person: person)
    }
}
print(greet3(person: "Tim", alreadyGreeted: true))
// Prints "Hello again, Tim!"

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bounds = minMax(array: [8, -6, 2, 109, 3, 71])
// print("min is \(bounds.min) and max is \(bounds.max)")
// Prints "min is -6 and max is 109"

func greet4(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}
print(greet4(person: "Bill", from: "Cupertino"))
// Prints "Hello Bill!  Glad you could visit from Cupertino."

func someFunction(_ firstParameterName: Int,_ secondParameterName: Int) {
    // In the function body, firstParameterName and secondParameterName
    // refer to the argument values for the first and second parameters.
}
// someFunction(1,2) virker

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) {
    // If you omit the second argument when calling this function, then
    // the value of parameterWithDefault is 12 inside the function body.
}
someFunction(parameterWithoutDefault: 3, parameterWithDefault: 6) // parameterWithDefault is 6
someFunction(parameterWithoutDefault: 4) // parameterWithDefault is 12

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1, 2, 3, 4, 5)
// returns 3.0, which is the arithmetic mean of these five numbers
arithmeticMean(3, 8.25, 18.75)
// returns 10.0, which is the arithmetic mean of these three numbers

//NOTE
//A function may have at most one variadic parameter.

