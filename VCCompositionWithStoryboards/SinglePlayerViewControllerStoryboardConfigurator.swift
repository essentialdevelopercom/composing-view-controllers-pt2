//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

final class SinglePlayerViewControllerStoryboardConfigurator: NSObject {
    var observation: NSKeyValueObservation?
    
    @IBOutlet private weak var player: UIViewController? {
        didSet {
            observation = player?.observe(\.parent) { player, changes in
                if let singlePlayerController = player.parent as? SinglePlayerViewController {
                    singlePlayerController.player = player as? PlayerScoreViewController
                }
            }
        }
    }
}
