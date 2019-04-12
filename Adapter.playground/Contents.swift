import UIKit

protocol PrintProtocol {
    func print(array: [String])
}

class Print {
    func printString(string: String) {
        print("string = \(string)")
    }
}

class Adapter: PrintProtocol {
    var print: Print

    func print(array: [String]) {
        for line in array {
            print.printString(string: line)
        }
    }

    init(print: Print) {
        self.print = print
    }
}

var adapter = Adapter(print: Print())
adapter.print(array: ["qwe", "asd"])
