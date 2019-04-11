import UIKit

protocol Button {
    var size: CGRect? {get set};
    func pushButton()
}

class ButtonIphone: Button {
    var size: CGRect?

    func pushButton() {
        print("push iphone button")
    }
}

class ButtonIpad: Button {
    var size: CGRect?

    func pushButton() {
        print("push ipad button")
    }
}

protocol Image {
    var size: CGRect? {get set};
    func pushImage()
}

class ImageIphone: Image {
    var size: CGRect?

    func pushImage() {
        print("push iphone image")
    }
}

class ImageIpad: Image {
    var size: CGRect?

    func pushImage() {
        print("push ipad image")
    }
}

protocol TextView {
    var size: CGRect? {get set};
    func didEnterText()
}

class TextViewIphone: TextView {
    var size: CGRect?

    func didEnterText() {
        print("enter text on iphone")
    }
}

class TextViewIpad: TextView {
    var size: CGRect?

    func didEnterText() {
        print("enter text on ipad")
    }
}

protocol AbstractFactory {
    func createButton() -> Button
    func createImage() -> Image
    func createTextView() -> TextView
}

class IphoneFactory: AbstractFactory {
    func createButton() -> Button {
        return ButtonIphone()
    }

    func createImage() -> Image {
        return ImageIphone()
    }

    func createTextView() -> TextView {
        return TextViewIphone()
    }
}

class IpadFactory: AbstractFactory {
    func createButton() -> Button {
        return ButtonIpad()
    }

    func createImage() -> Image {
        return ImageIpad()
    }

    func createTextView() -> TextView {
        return TextViewIpad()
    }
}

IpadFactory().createButton().pushButton()
IphoneFactory().createImage().pushImage()

var button: Button?
var image: Image?
var textView: TextView?

enum Devices {
    case iphone, ipad
}

var device: Devices = Devices.ipad
var factory: AbstractFactory?

if (device == .ipad) {
    factory = IpadFactory()
} else {
    factory = IphoneFactory()
}

button = factory!.createButton()
image = factory!.createImage()
textView = factory!.createTextView()
