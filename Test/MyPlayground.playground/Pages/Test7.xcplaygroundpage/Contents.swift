import Foundation

protocol SecondClassListener{
    func onListener()
}


class FirstClass:SecondClassListener{
    
    func initListerner() {
        let secondClass = SecondClass()
        secondClass.listener = self
        secondClass.callListener()
    }
    
    func onListener(){
        print("Volvi!!! en forma de fichas")
    }
}

class SecondClass {
    var listener:SecondClassListener?
    
    func callListener(){
        for n in 1...5{
            print("A second")
            sleep(1)
        }
        listener?.onListener()
    }
}

let firstClass = FirstClass()
firstClass.initListerner()



