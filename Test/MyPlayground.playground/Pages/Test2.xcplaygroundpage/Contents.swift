import Foundation

class Student {
    var name:String?
    var book:Book?
}

class Book {
    var pages:Int?
}

var student = Student()

print(student.name) // IMPRIMIRA NULO
print(student.book?.pages) // IMPRIMIRA NULO

student.name = "Jonathan"
student.book = Book()
student.book?.pages = 500 // SI ASIGNA SI NO ES NULO

if let pages = student.book?.pages, let name = student.name { // VALIDA LA INSTANCIA DE LOS 3 OBJETOS, SI NINGUNO ESTA NO PASA
    print("El numero de paginas del libro de \(name) son \(pages)")
} else {
    print("Qué es lo que intentas")
}


var optionalString:String?

func validateOptional() -> String {
    guard let myString = optionalString else { // VALIDA QUE SI ES NULO, RETORNE COMO ERROR
        return "Es nulo"
    }
    return "No es nulo, dice que \(myString)" // SI NO ES NULO, CONTINUA SU EJECUCION
}

print(validateOptional())
optionalString = "No te metas perra"
print(validateOptional())

print("para validar el token de git")
