//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        if let views = (window?.rootViewController as? UITabBarController)?.viewControllers,
            let single = views[0] as? SinglePlayerViewController,
            let multi = views[1] as? MultiplayerViewController,
            let timed = views[2] as? TimedMultiplayerViewController {
            
            _ = single.view
            _ = multi.view
            _ = timed.view
            
            single.player?.name = "Test!"
            
            multi.players?.playerOne?.name = "Test 1"
            multi.players?.playerTwo?.name = "Test 2"
            
            timed.players?.playerOne?.name = "Test 3"
            timed.players?.playerTwo?.name = "Test 4"
        }
        
        return true
    }
}
