//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

final class MultiplayerViewController: UIViewController {
    private(set) var players: MultiplayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "Players", let vc = segue.destination as? MultiplayerScoreViewController {
            players = vc
        }
    }
}
