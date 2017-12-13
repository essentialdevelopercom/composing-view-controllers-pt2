//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

final class TimedMultiplayerViewController: UIViewController {
    private(set) var timeBar: TimeBarViewController?
    private(set) var players: MultiplayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "TimeBar", let vc = segue.destination as? TimeBarViewController {
            timeBar = vc
        }
        else if segue.identifier == "Players", let vc = segue.destination as? MultiplayerScoreViewController {
            players = vc
        }
    }
}
