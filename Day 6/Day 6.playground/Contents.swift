import UIKit
import libkern
import Foundation
import os

var greeting = "Hello, playground"


//Closures

//Geriye değer döndürebilen, herhangi bir değişkene atanabilen ve atandığı değişkende saklanabilen kod bloklarına “Closure” denmektedir.

//Parametre Almayan ve Geriye Değer Döndürmeyen Closures
var exampleClosure = {
    print("Hello I'm a example Closure")
}

exampleClosure()

//Parametre Alan Closures
var exClosure_: (Int, Int) -> Void = { first, second in
    print(first + second)
}

exClosure_(3,2)

//yukaridaki örneğin parametrelere isim verilmemiş hali
var exClosure: (Int,Int) -> Void = {
    print($0 + $1)
}

exClosure(4,5)

let driving = { (place: String) in
    print("I'm  going to \(place) in my car.")
}

driving("London")

// functions and closures are different when they take parameters

func pay(user: String, amount: Int){
    //code
}

let payment = { (user: String, amount: Int) in
    //code
}

//Geriye değer döndüren  closures

var heyClosure: () ->String = {
    return "Hello closure"
}

var value = heyClosure()
print(value)


let drivingWithReturn = { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)

//parametre kabul etmeyen closures
let ppayment = { (user: String) -> Bool in
    print("Paying \(user)…")
    return true
}

ppayment("Gizem")

let ppaymentt = { () -> Bool in
    print("Paying an anonymous person...")
    return  true
}

ppaymentt()

//Closures as parameters
let ddriving = {
    print("I'm driving in my car")
}
func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}


travel(action: ddriving)
