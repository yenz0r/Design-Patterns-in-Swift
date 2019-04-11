import UIKit

class Settings {
    static let sharedInstance = Settings()

    var colorScheme: UIColor?
    var VolumeLevel: Float?
}

Settings.sharedInstance.colorScheme!

UIApplication.shared.applicationIconBadgeNumber = 999
