import Foundation

var str = "Hello, playground"

str = "Que pedo perros"

let constante =  "A su puta madre" // ES UNA CONSTANTE, NO CAMBIA

str = "Esta madre no arranca"

str = "Que tiste"

var laPincheVariable = "Hello, playground"

let laPutaConstante =  "A su puta madre" // ES UNA CONSTANTE, NO CAMBIA


var laPincheVariableGemela = "Hello, playground", suPutaHermana:String, suSoqueteHijo:String;

suPutaHermana = "Ah bien chingona"


let laPutaConstanteTwin =  "A su puta madre" // ES UNA CONSTANTE, NO CAMBIA

var numero:Int = 0

var str1 = """
cadena
multilinea
con commillas
triples
e
imprimible
"""

var str2 = """
cadena \
multilinea \
con commillas \
triples \
pero solo en código
"""


var char = "\u{23}"
var char2 : Character = "\u{23}"

var char3 : Character = "e"


var 🚃 = "Hoka oerris"

var emoji = "📊"

var hipo = "Hipotenuesa"
var meme = "en fin la \(hipo)" // INTERPOLACION

str2.contains("a")
str2.isEmpty
str2 = ""
str2.isEmpty

for (n) in str { //PUEDE O NO LLEVAR PARANTESIS
    print(n)
}

for n in str { //PUEDE O NO LLEVAR PARANTESIS
    print(n)
}

if (true) {  //PUEDE O NO LLEVAR PARANTESIS
    print("pues si")
}

if (true) {  //PUEDE O NO LLEVAR PARANTESIS
    print("\(suPutaHermana)")
}

var arr1: Array<Int> = [1, 2, 3, 4]

var arr2 = [1, 2, 3, 4]

arr2.append(5)
arr2.insert(6, at:5)


// TUPLAS
var persona = ("Jonathan", "Jimenez", "Bazan", 27, 1.70, true)
persona.3 // ACCEDIENDO POR INDICES


var persona2 = (nombre:"Jonathan", apPaterno:"Jimenez", apMaterno:"Bazan", edad:27, estatura:1.70, cafe:true)
persona2.apMaterno // ACCEDIENDO POR NOMBRE EN ATRIBUTO


enum PersonalData { // PODEMOS CONSIDERAR LOS ENUM COMO UN SELECTOR
    case name
    case surName
    case address
    case phone
}

enum PersonalData2 {
    case name, surName, address, phone
}

var current = PersonalData.address // AQUI ESTAMOS SELECCIONANDO A ADDRESS COMO EL REQUERIDO Y PODEMOS UTILIZARLO EN UN SWITCH
current = .name // AQUI ESTAMOS SELECCIONANDO A NAME COMO EL REQUERIDO Y PODEMOS UTILIZARLO EN UN SWITCH


enum PersonalData3 {
    case name(String)
    case surName(String, String)
    case address(String,Int)
    case phone(Int)
}

var pd3 = PersonalData3.surName("Jimenez", "Bazan")

print(pd3)

enum PersonalData4 : String { // IMPRIME EL VALOR ASIGNADO  EN EL RALVALUE
    case name = "Jonathan"
    case surName = "Jimenez"
    case address = "Bazan"
    case phone = "John"
}

enum PersonalData5 : Int { // IMPRIME EL VALOR DE INDICE EN EL RALVALUE
    case name
    case surName
    case address
    case phone
}

PersonalData5.address.rawValue


var arreglo = [9, 8, 7, 6, 5, 4, 3, 2, 1, 0]

var arr3 = arreglo[2...4]

var arr4 = arreglo[...4]

var arr5 = arreglo[2...]

var arr6 = arreglo[2..<6]

var arr7 = [1...9]

Array(arr7[0])

var age = 0 // NO EXISTE EL ++
age+=1
age+=1

!true

switch age {
case 0,1,2:
    print("Bebe")
case 3...10:
    print("Niño")
case 11..<16:
    print("Adolescente")
case 17..<70:
    print("Adulto")
case 70..<100:
    print("Anciano")
default:
    print("Dios")
}

var switchEnum = PersonalData.address

switch switchEnum {
case .name:
    print("name")
case .surName:
    print("surName")
case .address:
    print("address")
case .phone:
    print("phone")
}

for indice in 1...22{
    print(indice)
}

var paises = ["MX", "EUA", "JP", "CH", "ES"]

for pais in paises{
    print("Clave del pais: \(pais)")
}

var paisesDiccionario = ["MX":"Mexico", "EUA":"Estados Unidos", "JP":"Japon", "CH":"Chile", "ES":"España"]

for (clave, pais) in paisesDiccionario{
    print("Clave del pais: \(clave) y el pais es \(pais)")
}

func imprimeMensaje(){
    print("Es el primer mensaje que se va aimprimir a traves de un metodo generado por mi persona")
}

imprimeMensaje()


func metodoConParametro(num:Int, num2:Int) -> String{
    print("El cuadrado del numero es \(num*num)")
    return "Esta raro"
}

print(metodoConParametro(num:2,num2:6))

metodoConParametro(num:2,num2:6)

func mandarSaludo(aQuien : String, saludo : String = "Hola perro"){
    print("\(aQuien) \(saludo)")
}


mandarSaludo(aQuien: "Jonathan", saludo: "Que pedo wey")
mandarSaludo(aQuien: "Juanita")


func seudonimos(a num1:Int, b num2:Int) -> Int {
    return num1 + num2
}

seudonimos(a: 7, b: 3)

let metodoAsignado = {
    (num1:Int, num2:Int, num3:Int) -> Int
    in
    return num1 + num2 + num3
}

metodoAsignado(1, 3, 4)

struct CuadradoEstructura {
    var ladoA = 3
    var ladoB = 7
    
    func areaDeCuadrado() -> Int{
        return ladoA * ladoB
    }
}

var cuadroEstructura = CuadradoEstructura()
cuadroEstructura.areaDeCuadrado()

class CuadradoClase {
    var ladoA = 3
    var ladoB = 7
    
    func areaDeCuadrado() -> Int{
        return ladoA * ladoB
    }
}

var cuadroClase = CuadradoClase()
cuadroClase.areaDeCuadrado()

var cuadroEstructuraCopia = cuadroEstructura // LA COPIA GENERA OTRA COPIA
cuadroEstructuraCopia.ladoA = 5
cuadroEstructuraCopia.areaDeCuadrado()
cuadroEstructura.areaDeCuadrado()

var cuadroClaseCopia = cuadroClase // LA COPIA GENERA PASA LA REFERENCIA Y SE MODIFICA EL OBJETO ORIGINAL
cuadroClaseCopia.ladoA = 5
cuadroClaseCopia.areaDeCuadrado()
cuadroClase.areaDeCuadrado()


var pruebaNulo:String? // LA VARIABLE SI PUEDE SER NULA
pruebaNulo = nil

var pruebaNulo2:String = "BJ" // LA VARIABLE NO PUEDE SER NULA DEBE INICIALIZARSE DESDE EL PRINCIPIO
// pruebaNulo2 = nil // ERROR
pruebaNulo2 = "JB"

var optional1:String?
var optional2:String?
var optional3:String?

optional1 = "Jonathan"
optional2 = "Jimenez"
optional3 = "Bazan"

if let notNull1 = optional1, let notNull2 = optional2, let notNull3 = optional3 { // ESTRICTAMENTE SE DEBEN DE CUMPLIR LAS 3 O LAS QUE SEAN
    print("\(notNull1) no es nulo")
    print("\(notNull2) no es nulo")
    print("\(notNull3) no es nulo")
} else {
    print("Si es nulo")
}

if let notNull1 = optional1 {
    print("\(notNull1) no es nulo")
} else {
    print("Si es nulo")
}
