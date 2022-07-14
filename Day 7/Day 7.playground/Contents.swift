import UIKit

var greeting = "Hello, playground"

// func example
//when we  put the _ sign before writing a number we don't need to write a paramater name when we call the  function.
func sum (_ num1: Int,_ num2: Int) -> Int{
    return num1 + num2
}

sum(10, 11)


//closures
var resultClosure: (Int,Int) -> (Int) = { sayi1, sayi2 in
    return sayi1 + sayi2

    
}

let t = resultClosure(3, 4)
print(t)

//closures short way

var resultClosureShortWay: (Int, Int) -> (Int) = {
    return $0 + $1
}

resultClosureShortWay(10,11)

//function
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    print("London")
    print("I arrived!")
}

//closure
travel { (place: String) in
    print("I'm going to \(place) in my car")
    
}

let changeSpeed = { (speed: Int) in
    print("Changind speed to\(speed)kph")
}


//fonksiyona closure parametre olarak verme
func closureIleFiltreleme(closure: (Int) -> Bool, sayilar: [Int]) -> [Int] {
    var filtrelenmisDizi = [Int]()
    for sayi in sayilar {
        if closure(sayi) {
            filtrelenmisDizi.append(sayi)
        }
    }
    return filtrelenmisDizi
}

let filtrelenmisler = closureIleFiltreleme(closure: { (sayi) -> Bool in
    return sayi > 2
}, sayilar: [1, 2, 3, 4, 5, 10])


//closure in parametree olarak kısa yazımı-
func write(_ str: String, closure: (String) -> Void){
    //
}

//bir metot parametre olarak closure alıyorsa ve bu closure metodun dışındaki bir parametrede tutulmak istenirse (readclosure örnekteki)bu closure’un @escaping parametresi alması gerekmektedir.
struct Book{
  var readclosure: (() -> Void)
  mutating func sampleMethod(closure: @escaping () -> Void){
     self.readclosure = closure
  }
}

//autoclosure kullanımı

func sayMyName(closure: () -> String){
    print("My name is \(closure())")
}
    

func sayMyNameAuto(closure: @autoclosure() -> String){
    print("My name is Gizem")
}

//autoclosure kullanarak ve kullanmadan çağırılışı
sayMyName { () -> String in
   return "Ali"
}

 
sayMyNameAuto(closure: "Ali")

//@autoclosure parametresi ile beraber @escaping parametresini de kullanarak metot parametresi olarak gelen closure metot dışına aktarılabilir. Bu haliyle yeni metodumuz aşağıdaki gibi olacaktır:

var nameClosure: (() -> String)?
    
func sayMyNameAutoV2(closure: @autoclosure @escaping () -> String){
    print("My name is \(closure())")
    self.nameClosure = closure
}


//son tekrar

//parametre almayan ve geriye değer döndürmeyen closure
var sayHayyo:()-> Void = {
    print("Hayyoo")
}

//1 tane "String" parametre alan ve geriye "String"  değer döndüren closure

var sayHello:(String) -> String = { (valueName) in
    return "Hi \(valueName)"
    
}

print(sayHello("Defne"))

var sayHi: (String, String) -> String = { (value1, value2) in
    return "Hi \(value1), and \(value2) "
}

print(sayHi("Gizem","Coşkun"))

//bazen closurein dönüş tiği içerideki parametrelerde belirtilebilir
var sayHiCopy: (String, String) -> String = { (value1, value2) -> String in
    return "Hi \(value1), and \(value2) "
}
