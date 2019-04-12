//
//  ViewController.swift
//  Facade
//
//  Created by yenz0redd on 4/12/19.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    enum SoundType {
        case login, logout;
    }

    let audioManager = AudioManager()

    @IBAction func btnLoginAction(_ sender: Any) {
        audioManager.playAudio(inputType: AudioManager.SoundType.login)
    }

    @IBAction func btnLogoutAction(_ sender: Any) {
        audioManager.playAudio(inputType: AudioManager.SoundType.logout)
    }
}

