import Foundation

func printAnyValues<T>(a: T, b:T) -> String{ // T INDICA LO GENERICO DEL METODO
    return "Los valores son \(a)  y \(b)"
}

print(printAnyValues(a:"Jonathan", b:"Jimenez Bazan"))
print(printAnyValues(a:22, b:94))

print(printAnyValues(a:"Android", b:"Apple"))
print(printAnyValues(a:17, b:21))

func swapValues<T>(a: inout T, b: inout T){ // inout PARA PARAMETROS DE ENTRADA Y SALIDA
    let temp = a
    a = b
    b = temp
}

var a = 20
var b = 22
print("Antes eran \(a)  y \(b)")
swapValues(a: &a, b: &b) // & INDICA LA REFERENCIA DEL PARAMETRO DE ENTRADA Y SALIDA
print("Ahora son \(a) y \(b)")


4 % 4










