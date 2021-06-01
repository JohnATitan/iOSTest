import Foundation

class Example {
    var attr1Bool = false
    var attr2Bool = false
    var attr3String:String?
}

var example = Example()
example.attr3String = "Jonathan Jimenez Bazan"
example.attr1Bool = true

example.attr1Bool
example.attr2Bool
example.attr3String

if let attr = example.attr3String {
    print(attr)
}

