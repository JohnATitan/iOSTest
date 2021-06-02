import Foundation


struct ChessPiece { // ESTRUCTURAS ANIDADAS
    
    var color:Color
    var type:PieceType
    
    enum Color:String {
        case black = "Negra"
        case white = "Blanca"
    }
    
    enum PieceType:String {
        case king = "Rey"
        case queen = "Reina"
        case rock = "Torre"
        case bishop = "Alfil"
        case knight = "Caballo"
        case pawn = "Peon"
        
        struct Number {
            let quantity:Int
        }
        
        var number : Number {
            switch self {
            case .king:
                return Number(quantity:1)
            case .queen:
                return Number(quantity:1)
            case .rock:
                return Number(quantity:2)
            case .bishop:
                return Number(quantity:2)
            case .knight:
                return Number(quantity:2)
            case .pawn:
                return Number(quantity:8)
            }
        }
    }
    
    var description : String {
        return "La pieza es de color \(color.rawValue) y es de tipo \(type.rawValue) y en el tablero hay un total de \(type.number.quantity) piezas"
    }
    
}

var chessPiece = ChessPiece(color:.black, type:.pawn)
print(chessPiece.description)

