import Foundation

var myDictionary = [
    1:"Uno",
    9:"Nueve",
    0:"Cero",
    8:"Ocho",
    3:"Tres",
    7:"Siete",
    4:"Cuatro",
    6:"Seis",
    5:"Cinco",
    2:"Dos"
]

var mySet : Set = [5,3,6,2,8,9,0,1,4,7]
var myArray = [5,3,6,2,8,9,0,1,4,7]


// ORDENAMIENTO DE ARRAY

myArray.sort() // TRABAJA SOBRE EL MISMO OBJETO, ORDENAMIENTO DE MENOR A MAYOR
print(myArray)

myArray.sort{ (a, b) -> Bool in // ORDENAMIENTO PERSONALIZADO, DE MAYOR A MENOR
    return a > b
}
print(myArray)

// ORDENAMIENTO DE COLECCIONES

var myArraySorted = myArray.sorted() // GENERA UN NUEVO OBJETO ORDENAMIENTO DE MENOR A MAYOR
print(myArraySorted)

myArraySorted = myArray.sorted{ (a, b) -> Bool in // GENERA UN NUEVO OBJETO
    return a > b                                  // ORDENAMIENTO PERSONALIZADO, DE MAYOR A MENOR
}
print(myArraySorted)

var myDictionarySorted = myDictionary.sorted { (a, b) -> Bool in  // GENERA UN NUEVO OBJETO
    return a.key < b.key                                          // DE TIPO ARRAY DE TUPLAS
}
print(myDictionarySorted)

myDictionarySorted = myDictionary.sorted { (a, b) -> Bool in  // GENERA UN NUEVO OBJETO
    return a.key > b.key                                      // DE TIPO ARRAY DE TUPLAS
}
print(myDictionarySorted)

var mySetSorted = mySet.sorted() // GENERA UN NUEVO OBJETO DE TIPO ARRAY
print(mySetSorted)

mySetSorted = mySet.sorted { (a, b) -> Bool in  // GENERA UN NUEVO OBJETO
    return a > b                                      // DE TIPO ARRAY
}
print(mySetSorted)

var myMapArray = myArray.map { (myString) -> String in
    return "Elemento - \(myString)"
}
print(myMapArray)

var myMapDictionary = myDictionary.map { (myString) -> String in
    return "Elemento - \(myString.value)"
}
print(myMapDictionary)

var myMapSet = mySet.map { (myString) -> String in
    return "Elemento - \(myString)"
}
print(myMapSet)
