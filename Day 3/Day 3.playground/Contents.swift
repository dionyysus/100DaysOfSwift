import UIKit

var greeting = "Hello, playground"

//DAY3 

**let** secondScore = 4

**let** remainder = 13 % secondScore

**let** weeks = 465 / 7

**let** days = 465 % 7

// bir sayının verilen sayıya bölünüp bölünmediğni gösteriyor

**let** number = 465

**let** isMultiple = number.isMultiple(of: 7)

**let** firstHalf = ["John", "Paul"]

**let** secondHalf = ["George", "Ringo"]

**let** beatles = firstHalf + secondHalf

**let** meaningOfLife = 42

**let** doubleMeaning = 42 + 42

**var** score = 95

score -= 5

**var** quote = "The rain in Spain falls mainly on the "

quote += "Spaniards"

"a" <= "b"

"Taylor" <= "Swift"

**let** firstName = "Paul"

**let** secondName = "Sophie"

**let** firstAge = 40

**let** secondAge = 10

print(firstName == secondName)

print(firstName != secondName)

print(firstName < secondName)

print(firstName >= secondName)

print(firstAge == secondAge)

print(firstAge != secondAge)

print(firstAge < secondAge)

print(firstAge >= secondAge)

**enum** Sizes: Comparable{

**case** small

**case** medium

**case** large

}

**let** first = Sizes.small

**let** second = Sizes.large

print(first < second) //true yazar çünkü large değeri 2, small değeri 0

**let** firstCard = 11

**let** secondCard = 10

**if** firstCard + secondCard == 21 {

print("Blackjack!")

}

**let** num = 5

**if** num < 4 {

print("number less than 4 ")

}

**else**{

print("number more than 4 \(num)")

}

score = 9001

**if** score > 9000 {

print("It's over 9000!")

} **else** **if** score == 9000 {

print("It's exactly 9000!")

} **else** {

print("It's not over 9000!")

}

**let** age1 = 12

**let** age2 = 21

**if** age1 > 18 && age2 > 18 {

print("Both are over 18")

}

**if** age1 > 18 || age2 > 18 {

print("At least one is over 18")

}

**var** isOwner = **false**

**var** isAdmin = **true**

**if** isOwner == **true** || isAdmin == **true** {

print("You can delete this post")

}
