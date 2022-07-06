import UIKit

var greeting = "Hello, playground"

//DAY 4

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

**let** a = **true**

**let** b = **true**

**if** a && b {

print("Hello, Swift!")

}

**let** aa = 11

**let** bb = 10

print(aa == bb ? "Cards are the same" : "Cards are different")

**let** gizem = 22

**let** duru = 12

print(gizem > duru ? "gizem bigger than duru" : "duru bigger than gizem")

**let** isAuthenticated = **true**

print(isAuthenticated ? "Welcome!" : "Who are you?")

**let** weather = "sunny"

**switch** weather {

**case** "rain":

print("Bring an umbrella")

**case** "snow":

print("Wrap up warm")

**case** "sunny":

print("Wear sunscreen")

// buraya fallthrough yazarsan default da çalışır hale gelir

**default**:

print("Enjoy your day!")

}

//range operators

//1..5 = 1,2,3,4

//1...5 = 1,2,3,4,5

**let** scoree = 85

**switch** scoree {

**case** 0..<50:

print("You failed badly.")

**case** 50..<85:

print("You did OK.")

**default**:

print("You did great!")

}

// defaul must be there always

**let** names = ["Piper", "Alex", "Suzanne", "Gloria"]

print (names[0])

print(names[0...3])

print(names[0...])

**let** count = 1...5

**for** number **in** count {

print ("Number is \(number)")

}

print("Players gonna ")

//If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:

**for** _ **in** 1...5 {

print("play")

}

**let** namess = ["Sterling", "Cyril", "Lana", "Ray", "Pam"]

**for** _ **in** namess {

print("[CENSORED] is a secret agent!")

}

**var** numberr = 1

**repeat** {

print(number)

numberr += 1

} **while** numberr <= 20

print("Ready or not, here I come!")

**repeat** {

print("This is false")

} **while** **false**

//this code will never be run

//while false {

//print("This is false")

//}

**let** nuumbers = [1, 2, 3, 4, 5]

**let** random = nuumbers.shuffled()

//repeat bazen kendimizi tekrarlamamızı engeller. aşağıdaki 2 örnekte görülüyor

**let** numm = [1, 2, 3, 4, 5]

**var** rrandom = numm.shuffled()

**while** random == numm {

rrandom = numm.shuffled()

}

**let** numm1 = [1, 2, 3, 4, 5]

**var** randoam: [Int]

**repeat** {

randoam = numm1.shuffled()

} **while** random == numm1

**for** i **in** 1...10 {

**for** j **in** 1...10 {

**let** product = i * j

print ("\(i) * \(j) is \(product)")

}

}

//eger donguyu sınırlamak istiyorsak

outerLoop: **for** i **in** 1...10 {

**for** j **in** 1...10 {

**let** product = i * j

print ("\(i) * \(j) is \(product)")

**if** product == 50 {

print("It's a bullseye!")

**break** outerLoop

}

}

}

**let** options = ["up", "down", "left", "right"]

**let** secretCombination = ["up", "up", "right"]

**for** option1 **in** options {

**for** option2 **in** options {

**for** option3 **in** options {

print("In loop")

**let** attempt = [option1, option2, option3]

**if** attempt == secretCombination {

print("The combination is \(attempt)!")

}

}

}

}

outerLoop: **for** option1 **in** options {

**for** option2 **in** options {

**for** option3 **in** options {

print("In loop")

**let** attempt = [option1, option2, option3]

**if** attempt == secretCombination {

print("The combination is \(attempt)!")

**break** outerLoop

}

}

}

}

**for** i **in** 1...10 {

**if** i % 2 == 1 {

**continue**

}

print(i)

}
