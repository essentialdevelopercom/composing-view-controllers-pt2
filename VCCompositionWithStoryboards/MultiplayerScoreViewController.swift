//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

final class MultiplayerScoreViewController: UIViewController {    
    private(set) var playerOne: PlayerScoreViewController?
    private(set) var playerTwo: PlayerScoreViewController?
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "PlayerOne", let vc = segue.destination as? PlayerScoreViewController {
            playerOne = vc
        }
        else if segue.identifier == "PlayerTwo", let vc = segue.destination as? PlayerScoreViewController {
            playerTwo = vc
        }
    }
}

