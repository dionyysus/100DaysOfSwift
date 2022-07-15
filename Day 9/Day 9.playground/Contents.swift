import UIKit
import Foundation

var greeting = "Hello, playground"

//Initializers
//Initializers parametre almayan fonksiyon gibidir.

struct User {
    var username: String
    
    init() {
    username = "Anonymous"
        print("Creating a new user!")
    }
}

var user = User()
print(user.username)
user.username = "twostraws"

print(user.username)

struct Employee {
    var name: String
    var yearsActive = 0
}
extension Employee{
    init(){
        self.name = "Anonymous"
        print("Creating an anonymous employee..")
    }
}

let roslin = Employee(name: "Laura Roslin")
print(roslin)

struct Book {
    var title: String
    var author: String
    init(bookTitle: String, authore: String) {
        title = bookTitle
        author = authore
    }
}
let book = Book(bookTitle: "ff", authore: "fsdf")

struct Tree {
    var type: String
    var hasFruit: Bool
     init() {
        type = "Cherry"
        hasFruit = true
    }
}
let cherryTree = Tree()
print(cherryTree.type)

struct Person {
    var name: String

    init(name: String) {
        print("\(name) was born!")
        self.name = name
    }
}

struct Student {
    var name: String
    var bestFriend: String
    
    init(name: String, bestFriend: String) {
        print("Enrolling \(name) in class..")
        self.name = name
        self.bestFriend = bestFriend
    }
}

struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

//BURDA KALDIM 

struct Perrson {
    var name: String
    var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var ed = Perrson(name: "fldf")
print(ed.name)

//lazy sadece değişkenlerle kullanılır. Sabitlerle kullanılmaz.
//Computed Property yani Hesaplanmış Özellikle beraber kullanılmazlar. Hesaplanmış özelliklerde erişimlerde mutlaka bir değeri geriye döndürür.

//static properties
//Asla değişmeyecek bir değer için neden nesne üretmeye gerek duyalım. İşte bunun gibi durumlarda static kullanmamız gerekir.

//access control

struct Kisi {
    private var id: String

    init(id: String) {
        self.id = id
    }
}
