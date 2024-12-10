// Console app.
import _Concurrency

print("Hello, World!")

// the following codes are from https://docs.swift.org/swift-book/documentation/the-swift-programming-language/guidedtour/
var myVariable = 42
myVariable = 50
let myConstant = 42
print("myVariable:", myVariable, "myVariable:\(myVariable)")
print("myConstant:", myConstant, "myConstant:\(myConstant)")

//myConstant = myVariable
//print("myConstant:%d", myConstant)

let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble: Double = 70
let explicitFloat: Float = 4.4
print("implicitInteger:\(implicitInteger), implicitDouble:\(implicitDouble), explicitDouble:\(explicitDouble), explicitFloat:\(explicitFloat)")
print("type(of: implicitInteger):", type(of: implicitInteger), "type(of: implicitDouble):", type(of: implicitDouble), "type(of: explicitDouble):", type(of: explicitDouble), "type(of: explicitFloat):", type(of: explicitFloat))


let label = "The width is"
let width = 94
let widthLabel = label + String(width)
// Binary operator '+' cannot be applied to operands of type 'String' and 'int'
//let widthLabel2 = label + width

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) pieces of fruit."
print("appleSummary:" + appleSummary, ",  fruitSummary:" + fruitSummary)

let minuend:Float = 10.4
let subtractor:Float = 3.2
print("the result is \(minuend - subtractor)")
let babyName = "Jack"
print("The baby name is \(babyName)")

// Indentation at the start of each quoted line is removed, as long as it matches the indentation of the closing quotation marks.
let quotation = """
  Even though there's whitespace to the left,
  the actual lines aren't indented.
         Except for this line.
  Double quotes (") can appear without being escaped.

  I still have \(apples + oranges) pieces of fruit.
"""
print(quotation)


var fruits = ["strawberries", "limes", "tangerines"]
fruits[1] = "grapes"
print(fruits)
fruits.append("blueberries")
print(fruits)
fruits = []
// []
print(fruits)

var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic"
  ]
print(occupations["Malcolm"])

// nil absence of a value.     nil 在 Swift 中并不是任何单词的正式缩写。它来源于拉丁语单词 "nil"，意思是“没有”或“空的”
print(occupations["xxx"])
occupations["Jayne"] = "Public Relations"
print(occupations)
occupations = [:]
// [:]
print(occupations)

// Empty collection literal requires an explicit type
//let emptyArrayError = []

let emptyArray: [String] = []
let emptyDictionary: [String: Float] = [:]



let individualScores = [75, 43, 103, 87, 12]
var teamScore = 0
for score in individualScores {
    if (score > 50) {
        teamScore += 3;
    } else {
        teamScore += 1
    }
}
print("teamScore:\(teamScore)")

let scoreDecoration = if teamScore > 10 {
    "🎉"
} else {
    ""
}
print("Score", teamScore, scoreDecoration)


var optionalString: String? = "Hello"
print(optionalString == nil)
// Prints "false"

var optionalName: String? = "John Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name), optionalName:\(optionalName!)"
} else {
    greeting = "Hello, no one. So try to get one"
}
print(greeting)

optionalName = nil
greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
} else {
    greeting = "Hello, no one. So try to get one"
}
print(greeting)

// "" doesn't mean nil
optionalName = ""
greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name) \"\" is not nil"
} else {
    greeting = "Hello, no one. So try to get one"
}
print(greeting)


let nickname: String? = nil
let fullName: String = "John Appleseed"
let informalGreeting = "Hi \(nickname ?? fullName)"
print(informalGreeting)

if let nickname {
    print("Hey, \(nickname)")
} else {
    print("nickname is nil")
}

// Switches support any kind of data and a wide variety of comparison operations — they aren’t limited to integers and tests for equality.


let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber", "watercress":
    print("That would make a good tea sandwich.")
// 实际上没有理由let x在这种情况下使用。case let x where x.hasSuffix("pepper"):可以简单地替换为case vegetable where vegetable.hasSuffix("pepper"). 在这种情况下，声明了一个额外的变量x来复制vegetable. 这是无用的，并且有争议会降低可读性，即使您也重命名x为vegetable。   在 switch 语句中使用letcase 在其他情况下很有用，例如当“参数”（蔬菜）不是变量时，例如switch(getVegetableName())，或者在“参数”是元组并且需要解包的情况下
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")

    // switch must be exhaustive if removing the default case.
default:
    print("Everything tastes good in soup.")
}
// Prints "Is it a spicy red pepper?"


let interestingNumbers = [
    "Prime": [2, 3, 5, 7, 11, 13],
    "Fibonacci": [1, 1, 2, 3, 5, 8],
    "Square": [1, 4, 9, 16, 25],
]
print(interestingNumbers)
var largest = 0
for (_, numbers) in interestingNumbers {
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"

largest = 0
for (key, numbers) in interestingNumbers {
    print(key)
    for number in numbers {
        if number > largest {
            largest = number
        }
    }
}
print(largest)
// Prints "25"

var n = 2
while n < 100 {
    n *= 2
}
print(n)
// Prints "128"


var m = 2
repeat {
    m *= 2
} while m < 100
print(m)
// Prints "128"


var total = 0
for i in 0..<4 {
    total += i
}
print(total)
// Prints "6"

total = 0
for i in 0...4 {
    total += i
}
print(total)
// Prints "10"



// Functions and Closures        -> String means that the return type of this fuction is String
func greet(person: String, day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet(person: "Bob", day: "Tuesday"))

func greet(person: String, day: String, launch: String) -> String {
    return "Hello \(person), today is \(day), launch is \(launch)."
}
print(greet(person: "Bob", day: "Tuesday", launch: "steak"))

func greet(_ person: String, on day: String) -> String {
    return "Hello \(person), today is \(day)."
}
print(greet("John", on: "Wednesday"))


// (min: Int, max: Int, sum: Int) is the return type
func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0


    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score
        }
        sum += score
    }


    return (min, max, sum)
}
let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
print(statistics.min)
print(statistics.max)
print(statistics.sum)
print(statistics.0)
print(statistics.1)
print(statistics.2)


func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}
print(returnFifteen())



func makeIncrementer() -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}
var increment = makeIncrementer()
print(increment(7))


// A function can take another function as one of its arguments.
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}
var numbers = [20, 19, 7, 12]
print(hasAnyMatches(list: numbers, condition: lessThanTen))


numbers = [20, 19, 7, 12]
// You can write a closure without a name by surrounding code with braces ({}). Use in to separate the arguments and return type from the body.
let res = numbers.map({ (number: Int) -> Int in
    let result = 3 * number
    return result
})
print(res)

numbers = [20, 19, 7, 12]
let r = numbers.map({ (number: Int) -> Int in
    let result = number % 2 != 0
    return result ? 0 : number
})
print(r)


var mappedNumbers = numbers.map({ number in 3 * number })
print(mappedNumbers)
// Prints "[60, 57, 21, 36]"
mappedNumbers = numbers.map({ number in number % 2 != 0 ? 0 : number })
print(mappedNumbers)


let sortedNumbers = numbers.sorted { $0 > $1 }
print(sortedNumbers)
// Prints "[20, 19, 12, 7]"



class Shape {
    var numberOfSides = 0;
//    let perimeter: Int


    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."

    }

    func setArea(area: Int) -> Int {
        print(area)
        return 0
    }


}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()
print(shapeDescription)

class NamedShape {
    var numberOfSides: Int = 0
    var name: String

    init(name: String) {
        self.name = name
    }

    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }

}

class Square: NamedShape {
    var sideLength: Double

    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }

    func area() -> Double {
        return sideLength * sideLength
    }

    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
}
let square = Square(sideLength: 5.2, name: "This is a square")
print("area: \(square.area())")
print(square.simpleDescription())

class Circle: NamedShape {
    var radius: Double

    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)


        numberOfSides = 1
    }

    func area() -> Double {
        return 3.14 * radius * radius
    }

    override func simpleDescription() -> String {
        return "A circle with radius \(self.radius)"
    }

    func setX() {

    }
}
let circle = Circle(radius: 2.0, name: "This is a circle.")
print("area: \(circle.area())")
print(circle.simpleDescription())

class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0


    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        // 在 Swift 中，必须先初始化本类的属性才能调用父类的 init 方法
        super.init(name: name)
        // 使用属性或者方法要在super.init之后
        print(simpleDescription())
        numberOfSides = 3

    }


    var perimeter: Double {
        get {
             return 3.0 * sideLength
        }
        set {
            sideLength = newValue / 3.0
        }
    }


    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)."
    }
}
var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
// Prints "9.3"
triangle.perimeter = 9.9
print(triangle.sideLength)
// Prints "3.3000000000000003"


class TriangleAndSquare {
    var triangle: EquilateralTriangle {
        willSet {
            square.sideLength = newValue.sideLength
        }
    }

    var square: Square {
        willSet {
            triangle.sideLength = newValue.sideLength
        }
    }

    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "large square")
print(triangleAndSquare.triangle.sideLength)

let operionalSquareNil: Square? = nil
print(operionalSquareNil?.sideLength)
let operionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
print(operionalSquare?.sideLength)
//let tempVariable = operionalSquare?.sideLength
//print(type(of: tempVariable)



enum Rank: Int, CaseIterable {
    case ace = 1
    case two, three, four, five, six, seven, eight, nine, ten
    case jeneral, queen, king

    func simpleDescription() -> String {
        switch self {
            case .ace:
                return "ace"
            case .jeneral:
                return "jack"
            case .queen:
                return "queen"
            case .king:
                return "king"
            default:
                return String(self.rawValue)
        }
    }

    func compare(rank: Rank) -> Bool {
        return self.rawValue < rank.rawValue
    }
}
let ace = Rank.ace
let aceRawValue = ace.rawValue
print("ace", Rank.ace, ", ace.rawValue:", ace.rawValue)

let rawValue3A = Rank(rawValue: 3)
let rawValue3B = Rank(rawValue: 3)
// true
print("rawValue3A == rawValue3B:", rawValue3A == rawValue3B)

print(Rank.four.compare(rank: Rank.five))
print(Rank.ace.compare(rank: Rank.five))

let rawValue3 = Rank(rawValue: 3)
print("rawValue3:", rawValue3)
let rawValue30 = Rank(rawValue: 30)
print("rawValue30:", rawValue30)

if let convertedRank3 = rawValue3 {
    print("convertedRank3:", convertedRank3)
}  else {
    print("Rank(rawValue: 3) is nil")
}

if let convertedRank30 = rawValue30 {
    print("convertedRank30:", convertedRank30)
}  else {
    print("Rank(rawValue: 30) is nil")
}

enum Suit: CaseIterable {
    case spades, hearts, diamonds, clubs

    func simpleDescription() -> String {
       switch self {
       case .spades:
           return "spades"
       case .hearts:
           return "hearts"
       case .diamonds:
           return "diamonds"
       case .clubs:
           return "clubs"
       }
    }

    func color() -> String {
        switch self {
        case .spades, .clubs:
            return "black"
        case .diamonds, .hearts:
            return "red"
        }
    }
}
let hearts = Suit.hearts
let heartsDescriptions = hearts.simpleDescription()
print(hearts)
print(heartsDescriptions)
print(hearts.color())
print(Suit.spades.color())

let suitSpadesA = Suit.spades
let suitSpadesB = Suit.spades
// true
print("suitSpadesA == suitSpadesB:", suitSpadesA == suitSpadesB)


enum ServerResponse {
    case result(String, String)
    case failure(String)
    case unknown(String, String)
}
let success = ServerResponse.result("6:00 am", "8:09 pm")
let failure = ServerResponse.failure("Out of cheese.")
let unknown = ServerResponse.unknown("7:00 am", "Unknown exception.")

switch success {
case let .result(sunrise, sunset):
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure... \(message)")
case let .unknown(time, message):
    print("time is \(time). the message is \(message)")
}
switch failure {
case let .result(sunrise, sunset) :
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure... \(message)")
case let .unknown(time, message):
    print("time is \(time). the message is \(message)")
}
switch unknown {
case let .result(sunrise, sunset) :
    print("Sunrise is at \(sunrise) and sunset is at \(sunset)")
case let .failure(message):
    print("Failure... \(message)")
case let .unknown(time, message):
    print("time is \(time). the message is \(message)")
}

struct Card {
    var rank: Rank
    var suit: Suit

    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }

    func twoSimpleDescription() -> String {
        return "(" + rank.simpleDescription() + ", " + suit.simpleDescription() + ")"
    }
}
let threeOfSpades = Card(rank: .three, suit: .spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()
print("threeOfSpadesDescription: \(threeOfSpadesDescription)")

func deckOfCards() -> [Card] {
    var allCards: [Card] = []
    for suit in Suit.allCases {
        for rank in Rank.allCases {
            allCards.append(Card(rank: rank, suit: suit))
        }
    }

    return allCards
}
for card in deckOfCards() {
    print(card.twoSimpleDescription())
}

func fetchUserID(from server: String) async -> Int {
    if (server == "primary") {
        return 97
    }
    return 501
}
func fetchUsername(from server: String) async -> String {
    let userID = await fetchUserID(from: server)
    if userID == 501 {
        return "John Appleseed"
    }
    return "Guest"
}

func connectUser(to server: String) async {
    print("connectUser() start")
    async let userID = fetchUserID(from: server)
    async let username = fetchUsername(from: server)
    let greeting = await "Hello \(username), user ID \(userID)"
    print(greeting)
    print("connectUser() end")
}

print("before task")
let myTask = Task (priority: .high) {
    print("before await connectUser(to: \"primary\")")
    await connectUser(to: "primary")
    print("after await connectUser(to: \"primary\")")
}
print("after task")

await myTask.value

let userIDs = await withTaskGroup(of: Int.self) { group in
    for server in ["primary", "secondary", "development", ""] {
        group.addTask {
            return await fetchUserID(from: server)
        }
    }

    var resultArray: [Int] = []
    for await result in group {
        resultArray.append(result)
    }

    return resultArray
}

print(userIDs)


actor ServerConnection {
    var server: String = "primary"
    private var activeUsers: [Int] = []
    func connect() async -> Int {
        let userID = await fetchUserID(from: server)
        // ... communicate with server ...
        activeUsers.append(userID)
        return userID
    }
}

let server = ServerConnection()
let userID = await server.connect()
print(userID)


// 协议本身只是接口，实际上并不实现任何功能。但协议自身可以作为一种类型使用。它们可以像其他普通类型一样用在函数、方法或构造器中的参数类型或返回值类型，也可以用作常量、变量或属性的类型。
protocol ExampleProtocol {
     var simpleDescription: String { get }
     mutating func adjust()
     mutating func getDescription() -> String
}
class SimpleClass: ExampleProtocol {
     var simpleDescription: String = "A very simple class."
     var anotherProperty: Int = 69105
     func adjust() {
          simpleDescription += "  Now 100% adjusted."
     }
     func getDescription() -> String {
         return simpleDescription
     }
}
var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription
print(aDescription,"    ", a.getDescription())


struct SimpleStructure: ExampleProtocol {
     var simpleDescription: String = "A simple structure"
     mutating func adjust() {
          simpleDescription += " (adjusted)"
     }
     func getDescription() -> String {
         return simpleDescription
     }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription
print(bDescription, "    ", b.getDescription())


extension ExampleProtocol {
    func extensionFunction() -> String {
        return "extension function"
    }
}

print(b.extensionFunction())

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    mutating func adjust() {
        self += 42
    }
    func getDescription() -> String {
         return simpleDescription
     }
 }
print(7.simpleDescription)
// Prints "The number 7"


extension Double {
    static var absoluteValue: Double {
        get {
            print("Double get")
            // 这里 不论是 c 还是 self.c 都会造成 crash  原因是方法的死循环
//            return absoluteValue < 0 ? absoluteValue * -1 : absoluteValue
            return 9999
        }
        set {
            print("Double set", newValue)
//            c  = newValue  造成 crash  原因是方法的死循环
//            absoluteValue = newValue < 0 ? newValue * -1 : newValue
//            absoluteValue = -999
        }

    }
    func getDescription() -> Double {
        return self >= 0 ? self : -self
    }
}
let double9:Double = 9.0
print(double9.getDescription())
var doubleNegative9:Double = -9.0
print(doubleNegative9.getDescription())

Double.absoluteValue = -8.0

print(Double.absoluteValue)




enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

// toPrinter是参数标签。 参数标签的使用能够让一个函数在调用时更有表达力，更类似自然语言，并且仍保持了函数内部的可读性以及清晰的意图。
func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    }

    return "\(job) sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}
do {
    let printerResponse = try send(job: 1040, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print("A error was catched: ", error)
}

do {
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

do {
    throw PrinterError.onFire
    let printerResponse = try send(job: 1440, toPrinter: "Gutenberg")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the rest of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError).")
} catch {
    print(error)
}

let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")
print(printerSuccess)
print(printerFailure)


var fridgeIsOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]


func fridgeContains(_ food: String) -> Bool {
    fridgeIsOpen = true
    defer {
        fridgeIsOpen = false
    }


    let result = fridgeContent.contains(food)
    return result
}
if fridgeContains("banana") {
    print("Found a banana")
}
print(fridgeIsOpen)
// Prints "false"

func fridgeContainsError(_ food: String) throws -> Bool {
    fridgeIsOpen = true
    defer {
    print("defer")
        fridgeIsOpen = false
    }


    let result = fridgeContent.contains(food)
    if !result {
        throw PrinterError.outOfPaper
    }
    print("before return")
    return result
}
do {
    if try fridgeContainsError("banana") {
        print("Found a banana")
    }
} catch {
    print(error)
}
print(fridgeIsOpen)

// Prints "false"


func makeArray<Item>(repeating item: Item, numberOfTimes: Int) -> [Item] {
    var result: [Item] = []
    for _ in 0..<numberOfTimes {
         result.append(item)
    }
    return result
}
print(makeArray(repeating: "knock", numberOfTimes: 4))

// Reimplement the Swift standard library's optional type
enum OptionalValue<Wrapped> {
    case none
    case some(Wrapped)
}
var possibleInteger: OptionalValue<Int> = .none
print(possibleInteger)
possibleInteger = .some(100)
print(possibleInteger)



func anyCommonElements<T: Sequence, U: Sequence>(_ firstParameter: T, _ secondParameter: U) -> Bool
    where T.Element: Equatable, T.Element == U.Element
{
    for firstElement in firstParameter {
        for secondElement in secondParameter {
            if firstElement == secondElement {
                return true
            }
        }
    }
   return false
}
var anyCommonElementResult = anyCommonElements([1, 2, 3], [3])
print(anyCommonElementResult)
anyCommonElementResult = anyCommonElements([1, 2, 3], [8])
print(anyCommonElementResult)

func anyCommonElementArray<T: Sequence, U: Sequence>(_ firstParameter: T, _ secondParameter: U) -> [T.Element]
    where T.Element: Equatable, T.Element == U.Element
{
    var elements: [T.Element] = []
    for firstElement in firstParameter {
        for secondElement in secondParameter {
            if firstElement == secondElement {
                elements.append(firstElement)
            }
        }
    }
   return elements
}

var anyCommonElementResult2 = anyCommonElementArray([1, 2, 3], [3])
print(anyCommonElementResult2)
anyCommonElementResult2 = anyCommonElementArray([1, 2, 3], [8])
print(anyCommonElementResult2)










