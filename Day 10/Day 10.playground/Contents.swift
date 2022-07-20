import UIKit

var greeting = "Hello, playground"

//classes

//clas isimleri büyük harfle başlar


class Sandalye {
    var bacakSayisi: Int = 0
    var ad: String = ""
}

var s = Sandalye()
s.ad = "Sandalyeee"

var s1 = Sandalye()
s1.ad = "sandalye 1"

print(s1.ad)
print(s.ad)

// stack ve heap => bir nesne örneği oluşturuz ve bu stackte saklanır daha sonra heaple bağlanır. mesela classlar bu şekilde çalışır ama struct direkt heapte oluşur. nesnenin kendisine direkt ualşırız.

//example

//bir ogrenci uygulama modeli oluşturulmasi
//Ad, soyad, numara ve aldiği dersler bulunan öğrenciler olacaktır. öğrencilerin derslerinin ad,vize ve final notları olabilir. öğrencilerin derslerinin not ortalaması hesaplanabilir. öğrencinin sınıfı geçme durumu hesaplanabilir. Tüm dersleerin aritmetik ortalaması 40 ın alındaysa kalır, üstündeyse geçer. 3 farklı öğrenci oluşturup bu öğrencilerin notlarını girerek geçti kaldı durumlarını ekrana yazdıralaım.

class Ders{
    
    var Ad: String
    var Vize: Double?
    var Final: Double?
    
    init (ad:String){
        Ad = ad
    }
    func ortalamaHesapla() -> Double {
        return ((Vize ?? 0) + (Final ?? 0)) / 2
    }
   
    
}

class Ogrenci {
    
    let Ad:String
    let Soyad:String
    let Numara:Int
    var Dersler = [Ders]()

    init(ad: String, soyad:String, numara: Int) {
        Ad = ad
        Soyad = soyad
        Numara = numara
    }
    
    
    func durumHesapla()->String {
        
        var toplamNot = 0.0
        
        for ders in Dersler {
            toplamNot += ders.ortalamaHesapla()
        }
                
        /*if sonuc < 40 {
            return "kaldi"
        }
        else {
            return "geçti"
        }*/ //kisa hali aşağıdaki şekli
        return toplamNot / Double(Dersler.count) < 40 ? "kaldi" : "geçti"
    }
}


var o1 = Ogrenci(ad: "Gizem", soyad: "Coskun", numara: 12)
var o2 = Ogrenci(ad: "ad1", soyad: "soyad1", numara: 1)
var o3 = Ogrenci(ad: "ad2", soyad: "soyad2", numara: 3)


var d1 = Ders(ad: "Matematik")
var d2 = Ders(ad: "Fizik")

d1.Vize = 40
d1.Final = 90

o1.Dersler.append(d1)

d2.Vize = 70
d2.Final = 100

o2.Dersler.append(d2)


d1 = Ders(ad: "Matematik")
d2 = Ders(ad: "Fizik")

d1.Vize = 60
d1.Final = 90

o2.Dersler.append(d1)

d2.Vize = 70
d2.Final = 100

o2.Dersler.append(d2)


d1 = Ders(ad: "Matematik")
d2 = Ders(ad: "Fizik")

d1.Vize = 60
d1.Final = 30

o3.Dersler.append(d1)

d2.Vize = 30
d2.Final = 10

o3.Dersler.append(d2)

print("O1 durum: \(o1.durumHesapla())")
print("O2 durum: \(o2.durumHesapla())")
print("O3 durum: \(o3.durumHesapla())")


var a = "a"

var b = a

b = "ddd"
print(a)
