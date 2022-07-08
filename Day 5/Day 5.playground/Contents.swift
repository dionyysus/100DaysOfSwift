import UIKit



//Writing Functions
func printHelp(){
    let message = """
Welcome to MyApp!
"""
    
    print(message)
    

}

printHelp()

//Functions are also useful for breaking up code


//Accepting parameters

func square(number: Int){
    print(number*number)
}

square(number: 3)

//Returning values
func getUser() ->[String]{
    ["Taylor","Swift"]
}

let user = getUser()
print(user[0])

func getUserr()->[String:String]{
    ["first": "Taylor","last": "Swift"]
}

let user1 = getUserr()
print(user1["first"])

func greet(name: String) -> String {
    "Oh wow!"
}
greet(name: "Gizem")

func read(books: [String]) -> Bool {
    for book in books {
        print("I'm reading \(book)")
    }
    return true
}

read(books: ["dsf"])


//Ommiting

func printLogMessage(message: String) -> Bool {
    print("Log: \(message)")
    return true
}

printLogMessage(message: "dsad")

//variadic functions

func square(numbers: Int...) {
    for number in numbers {
        print("\(number) squared is \(number * number)")
    }
}

square(numbers: 1,2,3,4)

//throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

//inout parameters

var x = 4

func makeDouble(num: inout Int){
    num*=2
}

makeDouble(num: &x)
print(x)

func +=(leftNumber: inout Int, rightNumber: Int) {
    // code here
}

let driving = {
    print("I'm driving in my car")
}

driving()
