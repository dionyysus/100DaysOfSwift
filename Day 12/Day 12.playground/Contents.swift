import UIKit

var greeting = "Hello, playground"


// bir ifadeyi nil yani boş bir değer atamak istiyorsanız değerin yanına ? işareti eklemelisiniz.

var age: Int? = nil

var name: String? = nil

print(name) // bu sekilde nil olduğu için yazdıramayız. unwrap etmemiz gerekiyor.
//name = "gizem"
if let unwrapped = name {
    print("\(unwrapped.count) letters")
}else{
    print("missing name")
}


func greet(_ ad: String?) {
    guard let unwrapped = ad else {
        print("You didn't provide a name!")
        return
    }
    print ("Hello, \(unwrapped)!")
}

//greet(name
greet("gizem")
//şimdi guard ve if let arasındaki fark ne yaaani?  şöyle ki ikisi de biribirinin tam tersi aslında. bir koşul yazıyoruz. if let için eğer bu koşulu sağlıyorsa parantez içini işle eğer sağlamıyorsa isteğe bağlı olarak else kısmını işle. guard yapısı ise şöyle eğer şart false dönerse zorunlu else kısmına girer ama gerçekleşirse de işlem yapmaya devam eder. kısacası if else => olursa ne olacağğı guard let => olmazsa ne olacağı şartı demektir.

// force unwrapping

//notesss
//optional olmayan hiçbir değişken veya sabit nil değerini alamaz. eğer bir değişken veya sabit, bir değer almadan çalışacaksa her zaman için optional olarak kullanılır.
let str = "5"
let num = Int(str)
print(num)

let yas: Int! = nil
print(yas)

let degisken1: Int = 1 //sıfır dahil herhangi bir tamsayı değer olabilir
//let degisken2: Int? //herhangi bir tamsayı değere sahip olabilir veya içeriği boş yani nil’dir. Bu şekliyle değişkenin değeri otomatik olarak nil değere sahip olur.
//print(degisken1) //çıktı olarak “1” sonucunu verecektir.
//print(degisken2) //çıktı olarak “nil” sonucunu verecektir. Eğer değer atasaydık, Optional(değer) sonucunu verecekti.

// ek olarak int? değer ile int değerini toplayamazsınız.

let deger1: Int = 1
let deger2: Int? = 2
//print(deger1 + deger2) //hata verir ve uygulama çöker

// özet
//nil atadığımız bir değişkeni açmanın iki yolu vardır.
//forced unwrapping or optional binding.
//forced unwrapping -> değişkenin sonuna ünlem işareti konur. mesela yukarıdaki örneği yapacak olursak

print(deger1 + deger2!) // 3 değerni yazdırır çünkü nil değildir. ama nil olsaydı hata verirdi. ve ünlem yerine ? koysaydık yani normal unwrapping olsaydı yine hata verirdi çünkü biri normal dğeişken diğeri optional.

// bu durumda herhangi bir çökme yaşamamak için if değerini kullanacağız.

if deger2 != nil {
    print("yeniDeger")
}

//optional binding ise şöyle olur

var yeniDeger: String? = nil

if let yeniDeger = deger2 {
    print(yeniDeger)
}else{
    print("nil")
}

//Üçüncü seçeneğin adı Implicitly Unwrapped Optionals; yani Sorgusuzca Açılmış Opsiyonlar. Bu seçenekte ise, değişkenin kesinlikle ama kesinlikle bir değere sahip olduğunu biliyoruz. Dolayısıyla her gerektiğinde değişkeni açıp, değer ataması yapmamıza gerek yoktur. Çünkü ilk değer ataması yapılmıştır. Değişkenin sonuna ! işareti koyarak, içeriğini açmış oluruz. Değişken her çağırıldığında ünlem işareti kullanmaktansa, ilk tanımlandığında ünlem işareti kullanılır. Çoğunlukla Class tanımları içinde kullanılırlar.

//Eğer kesinlikle bir değere sahip olduğundan emin olduğunuz bir değişken tanımlarsanız ve değişkenin değeri nil olursa, başlatma hatası alırsınız. O yüzden, yazdığınız programın bir yerinde nil olmayacağından emin olmadıkça, bu seçeneği kullanmayınız.

// bu tür optional değişkenlerin değeri olup olmadığını şöyle test edebiliriz:
//let optionalDegisken: String! //implicitly unwrapped optionals
//let acilmisDegisken = optionalDegisken //artık ! işaretine gerek yok

//NIL COALESCING

func username(for id: Int) -> String? {
    if id == 1{
        return "Taylor Swift"
    }else {
        return nil
    }
}

username(for: 1)

let user = username(for: 12) ?? "Anonymous" // burda eğer username paramtresinde if karşılanmıyorsa değeri "anonymous" olarak döndür


enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password"{
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password")
}


if let result = try? checkPassword("password") {
    print("Result was \(result)")
}else {
    print("D'oh.")
}

struct Person {
    var id: String
    
    init?(id: String){
        if id.count == 9 {
            self.id = id
            print("kds")
        }else {
            return nil
        }
    }
}

var p = Person(id: "asdfghjkh")
