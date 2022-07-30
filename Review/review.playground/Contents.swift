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
