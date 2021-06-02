import Foundation

protocol SecondClassListener{ // INTERFAZ
    func onListener()
}


class FirstClass:SecondClassListener{ // CLASE QUE IMPLEMENTA LA INTERFAZ
    func initListerner() {
        let secondClass = SecondClass()
        secondClass.listener = self
        secondClass.callListener()
    }
    
    func onListener(){
        print("Volvi!!! en forma de fichas")
    }
}

class SecondClass { // CLASE QUE RECIBE LA INTERFAZ
    var listener:SecondClassListener?
    
    func callListener(){
        for _ in 1...5{
            print("A second")
            sleep(1)
        }
        listener?.onListener()
    }
}

let firstClass = FirstClass()
firstClass.initListerner()



