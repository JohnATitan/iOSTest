import Foundation

enum SumErrors : Error { // ERRORES PERSONALIZADOS
    case firstNumberNil
    case secondNumberNil
    case numberNegative(n1:Int, n2:Int)
}

func sum(firstNumber:Int?, secondNumber:Int?) throws -> Int { // THROWS PARA INDICAR QUE HABRA ERRORES
    
    if firstNumber == nil {
        throw SumErrors.firstNumberNil // SE LANZA EL ERROR
    } else if secondNumber == nil {
        throw SumErrors.secondNumberNil
    } else if firstNumber! < 0 || secondNumber! < 0 {
        throw SumErrors.numberNegative(n1:firstNumber!, n2:secondNumber!)
    }
    
    return firstNumber! + secondNumber!
}

do { // SE INDICA QUE HABRA POSIBLES ERRORES POR ATENDER
    let result = try sum(firstNumber: -10, secondNumber: 20) // TRY HACE EL INTENTO DEL METODO CON POSIBLES ERRORES
    print(result)
} catch SumErrors.firstNumberNil { // SE CACHAN LOS ERRORES RESULTANTES
    print("Numero uno es nulo")
} catch SumErrors.secondNumberNil {
    print("Numero dos es nulo")
} catch SumErrors.numberNegative(let n1, let n2) {
    print("Algun numero es negativo: n1 = \(n1), n2 = \(n2)")
}

