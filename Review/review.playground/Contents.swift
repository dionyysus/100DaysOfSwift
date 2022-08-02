import UIKit

var greeting = "Hello, playground"

//let kullanırsak değiskeni hiçbir şekilde değiştirmezsin.

//farklı değişken türlerini aynı işlemde kullanamzsın. mesela toplama çıkarma yapamazsın.

//typealias => mevcut veri tipi yerine takma ad vermektir. yani yeni tip oluşturmak yerine mevcut bir tipe referans verir. sade kod yazmak amacıyla kullanılır. örnek verecek olursam:

struct Makbuz {
    let toplamTutar: Double
}
typealias Dolar = Double
struct Makbuzz {
    let toplamTutar: Dolar
}

//yani artık Double yerine Dolar kullanabiliriz.

//tuples
let tuple = ("Gizem", "Coskun", "22")
let othertuple = (name: "Gizem", surname: "Coşkun", age: 22)
tuple.0
othertuple.name
//yukarıdaki iki tuple örneğinden şunu anlıyoruz; tuple içindeki değerlere isim vermek daha okunaklı olması açısından daha çok tercih ediliyor.

//optionals

//1. yontem
func sumTwoIntegers (first: Int?, second: Int?) {
    guard let first = first else {return}
    guard let second = second else {return}
    let sum = first + second
    print(sum)
}
//2.yontem
func sumTwoIntegerss (first: Int?, second: Int?) {
    if let first = first, let second = second {
        let sum = first + second
        print(sum)
    }
    
}
let first: Int? = 3
let second: Int? = 4
sumTwoIntegers(first: first, second: nil)
sumTwoIntegerss(first: first, second: second)
// burdan da eğer optional bir değer alabilme ihtimali varsa nil ve int değeri toplanmayacağı için kod hata verecektir. hata almamak için metot tanımlarken metot içinde if işlemi yapıyoruz.

//diziler
var lessons = ["ios101","fios","ioos"] // [String]
let lesson = lessons[1]

let features = ["age": "fifty five", "hometown": "adıyaman"] // [String: String]

// dizileri aşağıdaki örnekteki gibi de oluşturabiliriz. üçü de aynı
let array1: [String] = [] // boş bir dizi
let array2  = [String]()
let array3: Array<String> = []

let dictionary1: [String:Bool] = [:]
let dictionary2 = [String: Bool]()
let dictionary3: Dictionary<String,Bool> = [:]

// array fonksiyonları ve tanımı:
//sorted = array üzerinde sıralama işlemi yapar ve geri sıralanmış bir array döndürür.
//filter = array üzerinde yoklama işlemi yapar. her indisi yazdığınız formata göre uyup uymadığını kontrol ettirir.
//map = array üzerinde indislere ekleme yapmanızı sağlar. indisteki değerler üzerinde oynama yaoabilirsiniz.
//reduce = array üzerinde +- işlemlerini tüm indislerin üzerinde yağmanızı sağlar
//flatmap = dizideki değerleri ayırma işlemi yapar. mesela çok büyük boyutly dizideki değerleri tek dizi olarak döndürür
    
var Arr:[Int] = [3,1,22,4,5]
var a = (Arr.map{$0*2}.sorted{$0 < $1}.filter{$0 > 5 })
print(a)


// aşağıda iki  dizi örneği yapacağım. ikisi de aynı. alttaki üstekinin açılmış hali
let ios101 = lessons.filter{(lesson) -> Bool in
    return lesson == "ios101"
}

var filtered: [String] = []
for each in lessons {
    if each == "ios101" {filtered.append(each)}
}
print(filtered)
print(ios101)


let firstLetters = lessons.map{(lesson) -> Character in
    return lesson.first ?? Character("")
}
print(firstLetters)

let firstLetters2 = lessons.map { (lesson) -> String in
    String(lesson.first!)
}
print(firstLetters2)

var maps: [String] = []
for each in lessons {
    let string = String(each.first!)
    maps.append(string)
}
print(maps)

lessons.sort()
print(lessons)

lessons.sort {(lesson1, lesson2) -> Bool in
    return lesson1.last! < lesson2.last!
}
print(lessons)

class Person {
    var name = "No Name"
    var age = 0
}

let person1 = Person()
person1.name = "hasan"
let person2 = Person()
person2.name = "yasin"
person2.age = 22

enum WeatherType {
    case sun, cloud, rain, wind, snow
}

/*func getHaterStatus(weather: WeatherType) -> String? {
    if weather == WeatherType.sun{
        return nil
    }else {
        return "Hate"
    }
}

getHaterStatus(weather: WeatherType.cloud)*/


func getHaterStatus(weather: WeatherType) -> String? {
    switch weather {
    case .sun:
        return nil
    case .cloud, .wind:
        return "dislike"
    case .rain:
        return "hate"
    default:
        return "ds"
    }
// switch kullanmamız için tüm caseleri yazmamız gerekiyor. ya da default yazmamız lazım.
}
//classi nil yaparsak deinit varsa çalışır.
//classlar init edilmeli (structa bu zorunluluk yok)

class Person {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String){
        self.clothes = clothes
        self.shoes = shoes
    }
}

// classlar daha fazla esneklik sunarken structlar güvenlik sunar.
