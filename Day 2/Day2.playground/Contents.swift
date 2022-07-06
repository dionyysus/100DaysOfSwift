import UIKit

var greeting = "Hello, playground"

//DAY2
**let** john = "John"

**let** paul = "Paul"

**let** george = "George"

**let** ringo = "Ringo"

**let** beatles = [john,paul,george,ringo]

//SETS

**let** colors = Set(["red", "green", "blue"])

**let** names = Set(["Gizem","İrem", "Bulut"])

print("names:\(names)")

**var** a: Set = [21, 34, 54, 12]

print("a:\(a)")

print("colors:\(colors)")

**let** arrayOfBlogCategories: [String] = ["Swift", "Debugging", "Xcode", "Workflow", "Optimization"]

**let** setOfBlogCategories: Set<String> = ["Swift", "Debugging", "Xcode", "Workflow", "Optimization"]

//how to add something

//for array = append for set = insert

//TUPLES

**var** name =  (first: "Taylor", last:"Swift")

name.first

name.1

name.0

//Dictionaries

**let** heights = [

"Taylor Swift" :  1.78,

"Ed Sheeran" :1.73

]

heights["Taylor Swift"]

heights["Ed Sheeran"]

heights.first

**let** iceCream = [

"Paul": "Cohocolate",

"Shophie": "Vanilla"

]

iceCream["Paul"]

iceCream["Chocolate", **default**: "Unknown"] // eğer böyle bir key  yoksa default değer girer

//Creating empty collection

**var** teams = [String: String]()

//or

//we can then add entries later

teams["Paul"] = "Red"

**var** results = [Int]()

//or

**var** resultss = Array<Int>()

**var** scores = Dictionary<String, Int>()

**var** words = Set<String>()

//enums

**enum** Result {

**case** success

**case** failure

}

**let** result1 = Result.failure

**enum** Activity {

**case** bored

**case** running(destination: String)

**case** talking(topic: String)

**case** singing(volume: Int)

}

**let** talking = Activity.talking(topic: "makeup")

**enum** Planet: Int {

**case** mercury

**case** venus

**case** earth

**case** mars

}

**let** earth = Planet (rawValue: 2)

//verilen değerleri 0 dan başlatmak yerine

//kendimiz değer everebiliriz şöyle olur

**enum** Planett: Int{

**case** mercury=1

**case** venus

**case** earth

**case** mars

}

**let** earthh = Planett(rawValue: 2)

//
