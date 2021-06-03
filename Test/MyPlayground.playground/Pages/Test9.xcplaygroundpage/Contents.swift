import Foundation

var mySet:Set = ["cero","uno", "dos", "tres", "cuatro"]
mySet.insert("cinco") // INSERCION
mySet.insert("seis")
mySet.insert("siete")

if mySet.contains("tres") { // EXISTENCIA
    print("tres existe")
} else {
    print("tres no existe")
}

if mySet.contains("ocho") {
    print("ocho existe")
} else {
    print("ocho no existe")
}

var removed:String? = mySet.remove("cero") // ELIMINA POR OBJETO
print(removed!)

for item in mySet{ // ACCESO POR ITERACION PERO NO PERMITE SU MODIFICACION
    print(item)
}

if let index = mySet.firstIndex(of: "cuatro") { // OBTIENE INDICE CON BASE A OBJETO
    removed = mySet.remove(at: index)
}
print(removed!)

// OPERACIONES DE CONJUNTOS
var intSet1: Set = [1, 2, 3, 4, 5]
var intSet2: Set = [0, 2, 3, 6, 7]

intSet1.intersection(intSet2)
intSet1.symmetricDifference(intSet2)
intSet1.union(intSet2)
intSet1.subtracting(intSet2)

