//
//  AudioManager.swift
//  Facade
//
//  Created by yenz0redd on 4/12/19.
//  Copyright © 2019 yenz0redd. All rights reserved.
//

import Foundation
import MediaPlayer

class AudioManager {
    enum SoundType {
        case login, logout;
    }
    
    private func getSoundUrl(sound type: SoundType) -> URL? {
        switch type {
        case .login : do {
            print("login , \(Bundle.main.path(forResource: "Login", ofType: "m4a") ?? "...")")
            return URL(fileURLWithPath: "/Users/egorpii/Documents/GitHub/Design-Patterns-in-Swift/Facade/Facade/Login.m4a")
            }
        case .logout:
            return URL(fileURLWithPath: "/Users/egorpii/Documents/GitHub/Design-Patterns-in-Swift/Facade/Facade/Logout.m4a")
        }
    }

    private var player: AVPlayer?

    public func playAudio(inputType: SoundType) {
        let url = getSoundUrl(sound: inputType)!
        player = AVPlayer(url: url)
        player?.play()
    }
}
