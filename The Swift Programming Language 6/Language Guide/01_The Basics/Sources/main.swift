// Console app.

print("Hello, World!")


let i:Int = 5
let d:Double = 9.9
let b:Bool = true
let s:String = "This is a string"

print(i)
print(d)
print(b)
print(s)

let arrayCollection: Array = [1, 2, 3, 4, 4, 4]
let setCollection: Set = [1, 2, 3, 4, 4, 4]
let dictionaryCollection: [Int:String] = [1:"one", 2:"two", 3:"three"]
print(arrayCollection)
// [2, 3, 4, 1]
print(setCollection)
print(dictionaryCollection)


let maximumNumberLoginAttempts = 10
var currentLoginAttempt = 0

var environment = "development"
let maximumNumberLoginAttempts2: Int

if environment == "development" {
    maximumNumberLoginAttempts2 = 100
} else {
    maximumNumberLoginAttempts2 = 10
}
print("maximumNumberLoginAttempts2:", maximumNumberLoginAttempts2)

let constant1 = 1, constant2 = 3.2, constant3:String = "abcdefg"
var variable1 = 1, variable2 = 9.9, variable3:String = "hijklmn"
print("constant1:", constant1, "constant2:", constant2, "constant3:", constant3)
print("variable1:", variable1, "variable2:", variable2, "variable3:", variable3)

// The colon in the declaration means “…of type…,” so the code above can be read as:
// “Declare a variable called welcomeMessage that’s of type String.”     The variable welcomeMessage is a variable of type String
// “of + 名词”等于“与主语重复的同类名词 + of + 名词”的省略，相当于一个表示特征或属性的形容词。
// He is of that time. 他是那个时代的人。= He is a man of that time
// The story is of adventure. The story is a story of adventure
let welcomeMessage: String
welcomeMessage = "Welcome"
var welcomMessage2: String
welcomMessage2 = "Welcome"
welcomMessage2 = "Hello"
print("welcomeMessage:", welcomeMessage, "welcomMessage2:", welcomMessage2)


let π = 3.14159
let 你好 = "你好世界"
let 🐶🐮 = "dogcow"
print("π:", π, "你好:", 你好, "🐶🐮:", 🐶🐮)

print("π:", π, terminator: "")
print(",  你好:", 你好, terminator: "")
print(",  🐶🐮:", 🐶🐮, terminator: "\n\n")
print("π:\(π),     你好:\(你好),     🐶🐮:\(🐶🐮)")

/* This is the start of the first multiline comment.
    /* This is the second, nested multiline comment. */
This is the end of the first multiline comment. */

// Unlike many other languages, Swift doesn’t require you to write a semicolon (;) after each statement in your code, although you can do so if you wish. However, semicolons are required if you want to write multiple separate statements on a single line:
let cat = "🐱"; print(cat)

// unsigned int 8
let minValue = UInt8.min
let maxValue = UInt8.max
print("type of minValue:", type(of: minValue), ",    type of maxValue:", type(of: maxValue), ", UInt8.min:", UInt8.min, ",  UInt8.max:", UInt8.max)

let minInt = Int.min
let maxInt = Int.max
// Swift 提供了一个特殊的整数类型 Int ，长度与当前平台的原生字长相同： 在32位平台上， Int 和 Int32 长度相同。 在64位平台上， Int 和 Int64 长度相同
// 在我的这个机器上，Int 是64位 -2^63 ( -9,223,372,036,854,775,808) 到2^63-1(+9,223,372,036,854,775,807 )
print("type of minInt:", type(of: minInt), ",    type of minInt:", type(of: minInt), ", Int.min:", Int.min, ",  Int.max:", Int.max)

var aaa = 0.2
var bbb = 0.3
print(aaa + bbb)

// All of these integer literals have a decimal value of 17:
let decimalInteger = 17
let binaryInteger = 0b10001       // 17 in binary notation
let octalInteger = 0o21           // 17 in octal notation
let hexadecimalInteger = 0x11     // 17 in hexadecimal notation

print("decimalInteger:\(decimalInteger)   ", terminator: "")
print("binaryInteger:\(binaryInteger), octalInteger:\(octalInteger), hexadecimalInteger:\(hexadecimalInteger)")

print(1.25e2, "   ", 1.25e-2)
print(0xFp2, "    ", 0xFp-2)

// 12.1875      12.1875   3/16=0.1875
print(1.21875e1, "    ", 0xC.3p0)

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1
print(paddedDouble, ",  ",oneMillion, ",  ", justOverOneMillion)

/*
let tooBig: Int8 = Int8.max + 1
print(tooBig)
// When building, The error shows: Integer literal 128 overflows when stored into Int8
var tooLarge: Int8 = 128
print(tooLarge)
*/

let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)
print("twoThousandAndOne", twoThousandAndOne)

/*
swift 不能捕获未主动抛出的异常。  比如数组越界， 空指针等
// error occurs in runtime.  exited with code
let defaultTwoThousandAndOne = try (UInt8(twoThousand) + one)
print(defaultTwoThousandAndOne)
*/

let three = 3
let pointOneFourOneFiveNine = 0.14159
// Binary operator '+' cannot be applied to operands of type 'Double' and 'Int'
//let pi = pointOneFourOneFiveNine + three
let pi = Double(three) + pointOneFourOneFiveNine
print(pi)
let integerPi: Int = Int(pi)
print("integerPi: ", integerPi)

let numericAddition = 3 + 0.14159
print(numericAddition)

typealias AudioSample = UInt16
var maxAmplitudeFound = AudioSample.min
print("maxAmplitudeFound:", maxAmplitudeFound)

let orangeAreOrange = true
let turnipsAreDelicious = false
print("orangeAreOrange:", orangeAreOrange, "turnipsAreDelicious:", turnipsAreDelicious)

if turnipsAreDelicious {
    print("Mmm, tasty turnips!")
} else {
    print("Eww, turnips are horrible.")
}

let http404Error = (404, "Not Found")
print("http404Error:", http404Error)

let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode). The status message is \(statusMessage)")
print("The status code is \(http404Error.0). The status message is \(http404Error.1)")

let http200Status = (statusCode: 200, description: "OK")
print("The status code is \(http200Status.statusCode). This status message is \(http200Status.description)")

//You use optionals in situations where a value may be absent.
//An optional represents two possibilities:
//Either there is a value of a specified type, and you can unwrap the optional to access that value,
//or there isn’t a value at all.

let possibleNumber = "123"
let convertedNumber: Int?
convertedNumber = Int(possibleNumber)
print("convertedNumber: \(convertedNumber)")

let integerValue: Int
// Value of optional type 'Int?' must be unwrapped to a value of type 'Int'
// integerValue = Int(possibleNumber)

// serverResponse: Optional(404)
var serverResponse: Int? = 404
print("serverResponse: \(serverResponse)")
serverResponse = nil
print("serverResponse: \(serverResponse)")

// serverResponse: Optional(505)
serverResponse = 500
print("serverResponse: \(serverResponse)")


//If you define an optional variable without providing a default value, the variable is automatically set to nil:

var surveyAnswer: String?
// surveyAnswer is automatically set to nil
print("default optional String: \(surveyAnswer)")
if surveyAnswer == nil {
    print("The default optional value is nil")
}

let defaultValueInt: Int?
// Constant 'defaultValueInt' used before initialized
//print("default optional Int: \(defaultValueInt)")


if convertedNumber != nil {
    print("convertedNumber contains some integer value.")
}

surveyAnswer = "abc"
surveyAnswer = nil
print("default optional String: \(surveyAnswer)")

if let actualNumber = Int("123") {
    print("actualNumber is \(actualNumber).")
} else {
    print("actualNumber doesn't exist.")
}
if let actualNumber = Int("perserverance") {
    print("actualNumber is \(actualNumber).")
} else {
    print("actualNumber doesn't exist.")
}

// If you don’t need to refer to the original, optional constant or variable after accessing the value it contains, you can use the same name for the new constant or variable:
let myNumber = Int("perserverance")
// Here, myNumber is an optional integer
if let myNumber = myNumber {
    // Here, myNumber is a non-optional integer
    print("My number is \(myNumber)")
}
// Prints "My number is 123"

if let myNumber {
    print("My number is \(myNumber)")
}
// Prints "My number is 123"

let friendName: String! = nil
let greeting = "Hello, " + (friendName ?? "friend") + "!"
print(greeting)



let numberTemp1 = Int("1234")!
guard let numberTemp2: Int? = Int("1234")! else {
    fatalError("The number was invalid")
}
print("numberTemp1:", numberTemp1, "numberTemp2:", numberTemp2)

// _1_The_Basics.exe exited with code -1073741795
//let numberTemp3 = Int("perseverance")!

//_1_The_Basics.exe exited with code -1073741795
//guard let numberTemp4: Int? = Int("perseverance")! else {
//    fatalError("The number was invalid")
//}

var possibleString: String? = "An optional string."
let forcedString: String = possibleString! // Requires explicit unwrapping
print("forcedString: \(forcedString)")
possibleString = nil
print("possibleString: \(possibleString)")

var assumedString: String! = "An implicitly unwrapped optional string."
let implicitString: String = assumedString // Unwrapped automatically
print("implicitString: \(implicitString)")
assumedString = nil
print("assumedString: \(assumedString)")


let age = -3
assert(age >= 0, "A person's age can't be less than zero.")
// This assertion fails because -3 isn't >= 0.

if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    assertionFailure("A person's age can't be less than zero.")
}

// If you compile in unchecked mode (-Ounchecked), preconditions aren’t checked. The compiler assumes that preconditions are always true, and it optimizes your code accordingly.

//precondition(age >= 0, "A person's age can't be less than zero.")
if age > 10 {
    print("You can ride the roller-coaster or the ferris wheel.")
} else if age >= 0 {
    print("You can ride the ferris wheel.")
} else {
    preconditionFailure("A person's age can't be less than zero.")
}














