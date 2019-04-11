import UIKit

protocol MacBook {
    var price : Int {get}
    var description: String {get}
}

class MacBookAir: MacBook {
    var price: Int {
        get {
            return 999
        }
    }

    var description: String {
        get {
            return "MacBook Air"
        }
    }
}

class MacBookDecorator: MacBook {
    var price: Int {
        get {
            return instance.price
        }
    }
    var description: String {
        get {
            return instance.description
        }
    }

    var instance: MacBook
    init(macBook: MacBook) {
        self.instance = macBook
    }
}

class Upgrade1: MacBookDecorator {
    override var price: Int {
        get {
            return instance.price + 99
        }
    }
    override var description: String {
        get {
            return instance.description + " , upgrade 1"
        }
    }
    override init(macBook: MacBook) {
        super.init(macBook: macBook)
    }
}

class Upgrade2: MacBookDecorator {
    override var price: Int {
        get {
            return instance.price + 999
        }
    }
    override var description: String {
        get {
            return instance.description + " , upgrade 2"
        }
    }
    override init(macBook: MacBook) {
        super.init(macBook: macBook)
    }
}

var macBook: MacBook = MacBookAir()
macBook = Upgrade1(macBook: macBook)
macBook = Upgrade2(macBook: macBook)

macBook.description
macBook.price
