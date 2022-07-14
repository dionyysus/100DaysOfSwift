import UIKit

var greeting = "Hello, playground"

struct Sport{
    var name: String
 
}

var tennis = Sport(name: "Tennis")
print(tennis.name)

tennis.name = "Lawn tennis"

print(tennis.name)

struct Spoort {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is an Olympic sport"
        }else {
            return "\(name) is not an Olympic sport"
        }
    }
}

let cheesBoxing = Spoort(name: "Cheesboxing", isOlympicSport: false)
print(cheesBoxing.olympicStatus)
print(cheesBoxing.isOlympicSport)
print(cheesBoxing.name)

//Constants cannot be computed properties.
//let burnRemaining: Int {
        //return burnLength - alreadyBurned
    //} // like this code

struct Investor {
    var age: Int
    var investmentPlan: String {
        if age < 30 {
            return "Shares"
        } else if age < 60 {
            return "Equities"
        } else {
            return "Bonds"
        }
    }
}
let investor = Investor(age: 29)
print(investor.investmentPlan)


struct Progress {
    var task: String
    var amount: Int {
        didSet {
            print("\(task) is now \(amount)% complete")
        }
    }
}

var progress = Progress(task: "Loading date" , amount: 0)
progress.amount = 1
progress.amount = 2
progress.amount = 3


//methods
struct City {
    var population: Int
    
    func collectTaxes()-> Int{
        return population*100
    }
}

let london = City(population: 9_000_000)
london.collectTaxes()

struct Venue {
    var name: String
    var maximumCapacity: Int
    func makeBooking(for people: Int) {
        if people > maximumCapacity {
            print("Sorry, we can only accommodate \(maximumCapacity).")
        } else {
            print("\(name) is all yours!")
        }
    }
}

let venue = Venue(name: "dsad", maximumCapacity: 3)
venue.makeBooking(for: 5)

// mutating methods

//When you want to change a property inside a method, you need to mark it using the mutating keyword, like this:
//Türkçesi mutasyona uğramak olan, Struct’larda kullanılan bir özellik. Bu özellik sayesinde Struct içerisindeki varlıkları değiştirme imkanına sahip oluyoruz.

struct Person {
    var name: String
    
    mutating func makeAnonymous () {
        name = "Anoymous"
    }
}

var person = Person(name: "Gizem")
person.makeAnonymous()

print(person.name)

struct Diary {
    var entries: String
    mutating func add(entry: String) {
        entries += "\(entry)"
    }
}

var diary = Diary(entries: "dsd")
diary.add(entry: "dsf")

print(diary)

//Properties and methods of strings

let string = "Do or do not, there is no try."
print(string.count) //dizedeki karakter sayısı
print(string.hasPrefix("Do")) //dizi bu ifadeyle başlyorsa true döndürür.
print(string.uppercased()) // dizenin karakterlerini büyük harf yapabilirsin
print(string.sorted()) //dizeleri sıralar


//Properties and methods of arrays

var toys = ["Woody"]

print(toys.count)
toys.append("Buzz")
toys.firstIndex(of: "Buzz")
toys.remove(at: 0)
print(toys)

var examScores = [100,95,92]
examScores.insert(90, at: 3) // sonuç olarak insert kullanrken nereye ekleyeceğini de belirittiz

print(examScores)
