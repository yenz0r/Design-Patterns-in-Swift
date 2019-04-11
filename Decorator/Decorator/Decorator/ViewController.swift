//
//  ViewController.swift
//  Decorator
//
//  Created by yenz0redd on 4/12/19.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        var element: Element = SimpleView(view: UIView(frame: CGRect(x: 0, y: 0, width: 300, height: 300)))

        element = UpgradeBorder(element: element)
        element = UpgradeBackGroundColor(element: element)
        element = UpgradeAlpha(element: element)

        view.addSubview(element.view)

        print(element.description)
    }


}

