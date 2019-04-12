//
//  Model.swift
//  Adapter-app
//
//  Created by yenz0redd on 4/12/19.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

import Foundation
import UIKit

protocol AddTextToUIViewControllerProtocol {
    func addText(output text: String)
}

class Adapter: UIViewController, AddTextToUIViewControllerProtocol {
    func addText(output text: String) {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        label.text = text
        label.textColor = UIColor.black
        self.view.addSubview(label)
        label.center = view.center
    }
}
