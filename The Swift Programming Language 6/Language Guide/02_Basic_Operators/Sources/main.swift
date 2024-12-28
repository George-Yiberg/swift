// Console app.

print("Hello, World!")

let max = Int.max

// throw error
//var i: Int = max + 3
//print("i: \(i)")

let (x, y) = (1, 2)
print("x:\(x), y:\(y)")
print("\n Hello, world!")

print("9 % 4: \(9 % 4)")
// -9 = (4 x -2) + -1
print("-9 % 4: \(-9 % 4)")



let negtiveNumber = -9
let stillNegtiveNumber = +negtiveNumber
print("stillNegtiveNumber: \(stillNegtiveNumber)")


class A {
    var i: Int
    init(i: Int) {
        self.i = i
    }
}

let referenceA = A(i:5)
let referenceB = A(i:5)
let referenceC = referenceA
print("referenceA === referenceB: " + String(referenceA === referenceB))
print("referenceA === referenceC: " + String(referenceA === referenceC))

print(" (1, \"zebra\") < (2, \"apple\") ", (1, "zebra") < (2, "apple"))
print(" (3, \"apple\") < (3, \"bird\") ", (3, "apple") < (3, "bird"))
print(" (4, \"dog\") < (4, \"dog\") ", (4, "dog") < (4, "dog"))



// Binary operator < cannot be applied to two () operand
//let atMostSevenElements: Bool = (1, 2, 3, 4, 5, 6, 7) < (1, 2, 3, 4, 5, 6, 7)

let atMostSevenElements2: Bool = (1, 2, 3, 4, 5, 6) < (1, 2, 3, 4, 5, 6)
print("atMostSevenElements2:", atMostSevenElements2)

let optionalInt: Int? = 3
let optionalIntNil: Int? = nil
print("optionalInt:", optionalInt ?? 0)
print("optionalInt:", optionalInt != nil ? optionalInt! : 0)
print("optionalIntNil:", optionalIntNil ?? 0)
print("optionalIntNil:", optionalIntNil != nil ? optionalIntNil! : 0)

let defaultColorName = "red"
// defaults to nil
var userDefinedColorName: String?
var colorNameToUse = userDefinedColorName ?? defaultColorName
print("colorNameToUse:", colorNameToUse)
userDefinedColorName = "green"
colorNameToUse = userDefinedColorName ?? defaultColorName
print("colorNameToUse:", colorNameToUse)



for i in 2..<5 {
    print("i:\(i) ", terminator: "")
}
print()
for i in 2...5 {
    print("i:\(i) ", terminator: "\n\r")
}

let names = ["Anna", "Alex", "Brian", "Jack"]
let count = names.count
for i in 0 ..< count {
    print("Persion \(i + 1) is called \(names[i])")
}


for name in names[2...] {
    print(name)
}
for name in names[...2] {
    print(name)
}
for name in names[..<2] {
    print(name)
}


let oneSidedRange = ...5
print("oneSidedRange.contains(7):", oneSidedRange.contains(7))
print("oneSidedRange.contains(4):", oneSidedRange.contains(4))
print("oneSidedRange.contains(-1):", oneSidedRange.contains(-1))

// For-in loop requires 'PartialRangeThrough<Int>' to conform to 'Sequence'
//for i in ...5 {
//    print(i, terminator: " ")
//}

for i in 1... {
    print(i, terminator: " ")
    if (i == 8) {
        break
    }
}

let allowedEntry = false
if (!allowedEntry) {
    print("ACCESS DENIED.")
}

let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("Welcome!")
} else {
    print("ACCESS DENIED.")
}

let hasDoorKey = false
let knowsOverridePassword = true
if hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("Welcome!")
} else {
    print("ACCESS DENIED")
}



















print("\nprograme over")


