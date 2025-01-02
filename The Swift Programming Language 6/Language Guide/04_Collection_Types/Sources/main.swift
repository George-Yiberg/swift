// Console app.  Organize data using arrays, sets, and dictionaries.


var someInts: [Int] = []
print("someInts is of type [Int] with \(someInts.count) items.")
// Prints "someInts is of type [Int] with 0 items."
someInts.append(3)
print("someInts is of type [Int] with \(someInts.count) items.")
someInts = []
print("someInts is of type [Int] with \(someInts.count) items.")

var shoppingList: [String] = ["Eggs", "Milk"]
// shoppingList has been initialized with two initial items
print("shoppingList:\(shoppingList)")

let immutableSizeOfNumbers: [Int] = []
//immutableSizeOfNumbers.append(4)
//print("immutableSizeOfNumbers.count: \(immutableSizeOfNumbers.count)")

print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
     print("The shopping list is empty.")
} else {
    print("The shopping list isn't empty.")
}
shoppingList.append("Flour")
shoppingList += ["Baking Powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
print("This shopping list contains \(shoppingList.count) items.")

for index in 0..<shoppingList.count {
    print(shoppingList[index], terminator: ", ")
}
print()
shoppingList[0] = "Six eggs"
for index in 0..<shoppingList.count {
    print(shoppingList[index], terminator: ", ")
}
print()
shoppingList[4...6] = ["Bananas", "Apples"]
for index in 0..<shoppingList.count {
    print(shoppingList[index], terminator: ", ")
}
print()
shoppingList.insert("Maple Syrup", at: 0)
for index in 0..<shoppingList.count {
    print(shoppingList[index], terminator: ", ")
}
print()
let mapleSyrup = shoppingList.remove(at: 0)
print("\(mapleSyrup) is removed.")
for index in 0..<shoppingList.count {
    print(shoppingList[index], terminator: ", ")
}
print()

for item in shoppingList {
    print(item, terminator: ", ")
}
for (index, value) in shoppingList.enumerated() {
    print("Item \(index + 1): \(value)", terminator: ", ")
}

