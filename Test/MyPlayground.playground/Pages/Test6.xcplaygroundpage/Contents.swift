import Foundation

extension Double {
    var km:Double{
        return self / 1000
    }
    
    var m:Double{
        return self
    }
    
    var cm:Double{
        return self * 100
    }
}

var myMeters:Double = 5000

print(myMeters.km)
print(myMeters.m)
print(myMeters.cm)

protocol PersonProtocol {
    var name: String {get set}
    var age: Int {get set}
    
    func fullName() -> String
}

struct Programmer : PersonProtocol {
    var name: String
    var age: Int
    var language: String
    
    func fullName() -> String {
        return "Su nombre es \(name) y tiene \(age) años y su lenguaje de programacion favorito es \(language)"
    }
}

struct Teacher : PersonProtocol {
    var name: String
    var age: Int
    var subject: String
    
    func fullName() -> String {
        return "Su nombre es \(name) y tiene \(age) años e imparte la materia \(subject)"
    }
}

let programmer = Programmer(name: "Jonathan", age: 27, language: "Swift")
print(programmer.fullName())

let teacher = Teacher(name: "Alma Elena", age: 26, subject : "Calculo diferencial")
print(teacher.fullName())



