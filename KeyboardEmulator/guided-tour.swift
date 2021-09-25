/*
https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html
1. Simple Values
*/

let label = "This is text and also is constant"
var dynamic_text = "This is dynamic text"
print(dynamic_text)
dynamic_text = "Previous text were overwritten"
print(dynamic_text)

//print("Trying to overwrite constant `label`")
//label = "Trying to overwrite completed?"
print(label)
var apples = 5
var oranges = 3
print("apples \(apples)")
print("apples + oranges \(apples + oranges) pieces")

let multipleLineText = """
This multiline text with \(apples) oranges
And with \(oranges) oranges
"""
print(multipleLineText)



var shoppingList = ["Oranges", "Apples", "Bananas"]
shoppingList[1] = "Bottle of water"

var occupations = [
  "John": "Driver",
  "Steve": "Photographer"
]

occupations["Jayne"] = "Journalist"
shoppingList.append("Milk")
print(occupations)
print(shoppingList)

let emptyArray: [String] = []
let emptyDictrionary: [String: Float] = [:]

shoppingList = []
occupations = [:]


// 2. Control Flow
// https://docs.swift.org/swift-book/GuidedTour/GuidedTour.html#ID462