// Console app.

print("Hello, World!")

let singleLineString = "These are the same"
let multilineString = """
These are the same.
"""
print("singleLineString: \(singleLineString)")
print("multilineString: ###\(multilineString)###")

let softWrappedQuotation = """
The White Rabbit put on his spectacles.  "Where shall I begin, \
please your Majesty?" he asked.

"Begin at the beginning," the King said gravely, "and go on \\
till you come to the end; then stop."
"""
print("softWrappedQuotation:", softWrappedQuotation)


let linesWithIndentation = """
    This line doesn't begin with whitespace.
        This line begins with four spaces.
    This line doesn't begin with whitespace.
    """
print("linesWithIndentation:", linesWithIndentation)

let singleLine = #"Line 1 \n\rLine 2"#
print("singleLine:", singleLine)


var emptyString = ""               // empty string literal
var anotherEmptyString = String()  // initializer syntax
// these two strings are both empty, and are equivalent to each other

print(emptyString == anotherEmptyString)
//print(emptyString === emptyString)

// Swift’s String type is a value type. If you create a new String value, that String value is copied when it’s passed to a function or method, or when it’s assigned to a constant or variable.
//print(anotherEmptyString === anotherEmptyString)

// swift 函数参数默认是常量，如果需要改变参数的值，把这个参数定义为输入输出参数 inout
func tryChangeString(s: inout String) -> Void {
    s = s + s
}

var originString: String = "origin string"
tryChangeString(s:&originString)
print("originString:", originString)


var compareString: String = "compare string"
func tryCompareString(s: String) -> Void {
    compareString = "new compare string"
    // s: compare string
    print("s:", s)
}

tryCompareString(s:compareString)
// compareString: new compare string
print("compareString:", compareString)

for character in "Dog!🐶" {
    print(character)
}



let exclamationMark: Character = "!"
print("String(exclamationMark):", String(exclamationMark))

let catCharacters: [Character] = ["C", "a", "t", "!", "🐱"]
let catString = String(catCharacters)
print("catString:", catString)

let string1: String = "hello"
let string2: String = " there"
var welcome = string1 + string2
welcome.append(exclamationMark)
var instruction = "look over"
instruction += string2
print("welcome: ", welcome, terminator: "  ")
print("instruction: \(instruction)")

let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"
// message is "3 times 2.5 is 7.5"
print(message)
print(#"Write an interpolated string in Swift using \(multiplier)."#)

// Invalid escape sequence in literal
//print(#"Write an interpolated string in Swift \# using \(multiplier)."#)

// 16
print("MemoryLayout.size(ofValue: exclamationMark):", MemoryLayout.size(ofValue: exclamationMark))
// 16
print("MemoryLayout.size(ofValue: string1):", MemoryLayout.size(ofValue: string1))


// 16
print("MemoryLayout<Character>.size:", MemoryLayout<Character>.size)
// 16
print("MemoryLayout<String>.size:", MemoryLayout<String>.size)


for codePoint in 65...90 {
    let characterUnicode: UnicodeScalar?
    characterUnicode = UnicodeScalar(codePoint)

    if characterUnicode == nil {
        print("\(codePoint) is a invalid number for unicode", terminator: " ")
    } else {
        print("\(codePoint):\(characterUnicode!)", terminator: " ")
    }
}
print()
for codePoint in 97...122 {
    let characterUnicode: UnicodeScalar?
    characterUnicode = UnicodeScalar(codePoint)

    if characterUnicode == nil {
        print("\(codePoint) is a invalid number for unicode", terminator: " ")
    } else {
        print("\(codePoint):\(characterUnicode!)", terminator: " ")
    }
}
print()
// Swift recognizes that these two scalars can form a single composite character
// Here, even though combinedEAcute is created using two Unicode scalars, Swift treats them as a single character é when printed.
// Unicode allows characters to be composed of multiple code points, such as base characters combined with diacritical marks.
//Swift handles this properly by recognizing the sequence as a composite character or grapheme cluster, which is considered a single Character in the Swift type system.

var combinedEAcute: Character = "\u{65}\u{301}"
print("combinedEAcute:\(combinedEAcute)")
let precomposed: Character = "\u{D55C}"                  // 한
let decomposed: Character = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ
// precomposed is 한, decomposed is 한
print("precomposed: \(precomposed),  decomposed:\(decomposed)")

let enclosedEAcute: Character = "\u{E9}\u{20DD}"
// enclosedEAcute is é⃝
print("enclosedEAcute:\(enclosedEAcute)")

let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
print("unusualMenagerie has \(unusualMenagerie.count) characters")
// Prints "unusualMenagerie has 40 characters"

var count: Int = 0
for character in unusualMenagerie {
    count = count + 1
    print(character, terminator: " ")
}
print("\nI count the string manually. count:\(count)")

print("unusualMenagerie[unusualMenagerie.startIndex]: \(unusualMenagerie[unusualMenagerie.startIndex])")
print("unusualMenagerie[unusualMenagerie.index(before: unusualMenagerie.startIndex)]: \(unusualMenagerie[unusualMenagerie.index(before: unusualMenagerie.endIndex)])")
let index = unusualMenagerie.index(unusualMenagerie.startIndex, offsetBy: 39)
print("unusualMenagerie[index]: \(unusualMenagerie[index])")

for index in unusualMenagerie.indices {
    print("\(unusualMenagerie[index])", terminator: " ")
}

var welcomeString: String = "hello"
welcomeString.insert("!", at: welcomeString.endIndex)
print("\nwelcome:\(welcomeString)")
welcomeString.insert(contentsOf: "!!", at: welcomeString.endIndex)
print("welcome:\(welcomeString)")

welcomeString.remove(at: welcomeString.index(before: welcomeString.endIndex))
print("welcome:\(welcomeString)")

let removeRange = welcomeString.index(welcomeString.endIndex, offsetBy: -2)..<welcomeString.endIndex

welcomeString.removeSubrange(removeRange)
print("welcome:\(welcomeString)")

let greeting = "Hello, world!"
let indexGreeting = greeting.firstIndex(of: ",") ?? greeting.endIndex
let beginning = greeting[..<indexGreeting]
// beginning is "Hello"
print("beginning:\(beginning)")

// Convert the result to a String for long-term storage.
let newString = String(beginning)
print("newString:\(newString)")

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

// "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
// "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
if eAcuteQuestion == combinedEAcuteQuestion {
    print("These two strings are considered equal")
}
// Prints "These two strings are considered equal"

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var act1SceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1 ") {
        act1SceneCount += 1
    }
}
print("There are \(act1SceneCount) scenes in Act 1")
// Prints "There are 5 scenes in Act 1"

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
// Prints "6 mansion scenes; 2 cell scenes"
let dogString = "Dog‼🐶!!！！"
for c in dogString {
    print(" \(c)", terminator: " ")
}
for codeUnit in dogString.utf8 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 226 128 188 240 159 144 182 "

for codeUnit in dogString.utf16 {
    print("\(codeUnit) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 55357 56374 "

for scalar in dogString.unicodeScalars {
    print("\(scalar.value) ", terminator: "")
}
print("")
// Prints "68 111 103 8252 128054 "

for scalar in dogString.unicodeScalars {
    print("\(scalar) ")
}
// D
// o
// g
// ‼
// 🐶




