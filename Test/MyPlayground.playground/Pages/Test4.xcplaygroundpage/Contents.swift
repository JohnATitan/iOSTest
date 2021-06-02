import Foundation

class Example {
    var attr1Bool = false
    var attr2Bool = false
    var attr3String: String?
}

var example = Example()
example.attr3String = "Jonathan Jimenez Bazan"
example.attr1Bool = true

if let attr = example.attr3String {
    print(attr)
}

print("hola mundo")

class Example2 {
    var attr1Bool = false
    var attr2Bool = false
    var attr3String: String?
}

var example2 = Example2()
example2.attr3String = "Jonathan Jimenez Bazan"
example2.attr1Bool = true

if let str1 = example.attr3String {
    print("\(str1)")
}

if let str2 = example2.attr3String, let str1 = example.attr3String {
    print("\(str2), \(str1)")
}

print("\(example.attr3String!) - \(example2.attr3String!)")

if let str4 = example.attr3String, let str5 = example2.attr3String {
    print("\(str4) - \(str5)")
}

var myString = "Nintendo"
var myInt = 1994

class MyClass {
    var name: String?
    var age: Int?
}

var myClass = MyClass()
myClass.name = "Jonathan"
myClass.age = 27


var myArray:[Any] = [myString, myInt, myClass]

for item in myArray {
    if item is String {
        let itString = item as! String
        print("El objeto es String \(itString)")
    } else if item is Int {
        let itInt = item as! Int
        print("El objeto es Int \(itInt)")
    } else if item is MyClass {
        let itMyClass = item as! MyClass
        print("El objeto es MyClass \(itMyClass.name!) - \(itMyClass.age!)")
    }
}

for item in myArray {
    if let itString = item as? String{
        print("El objeto es String \(itString)")
    } else if let itInt = item as? Int{
        print("El objeto es Int \(itInt)")
    } else if  let itMyClass = item as? MyClass{
        print("El objeto es MyClass \(itMyClass.name!) - \(itMyClass.age!)")
    }
}


//



