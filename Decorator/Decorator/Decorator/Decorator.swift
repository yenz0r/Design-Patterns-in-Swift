//
//  Decorator.swift
//  Decorator
//
//  Created by yenz0redd on 4/12/19.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

import Foundation
import UIKit

protocol Element {
    var view: UIView {get}
    var description: String {get}

}

class SimpleView: Element {
    var view: UIView
    var description: String

    init (view: UIView) {
        self.view = view
        self.description = "simple view"
    }
}

class Decorator: Element {
    var view: UIView
    var description: String

    init (element: Element) {
        self.view = element.view
        self.description = element.description
    }
}

class UpgradeBorder: Decorator {
    override init(element: Element) {
        super.init(element: element);
        self.view.layer.borderColor = UIColor.black.cgColor
        self.view.layer.borderWidth = 10
        self.description = element.description + " + add border"
    }
}

class UpgradeBackGroundColor: Decorator {
    override init(element: Element) {
        super.init(element: element);
        self.view.backgroundColor = UIColor.red
        self.view.layer.borderWidth = 10
        self.description = element.description + " + add background"
    }
}

class UpgradeAlpha: Decorator {
    override init(element: Element) {
        super.init(element: element);
        self.view.alpha = 0.1
        self.description = element.description + " + add alpha"
    }
}
