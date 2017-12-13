//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

final class PlayerScoreViewController: UIViewController {
    @IBOutlet private(set) weak var nameLabel: UILabel?
    @IBOutlet private(set) weak var scoreLabel: UILabel?
    
    var name: String? {
        set { nameLabel?.text = newValue }
        get { return nameLabel?.text }
    }
    
    var score: String? {
        set { scoreLabel?.text = newValue }
        get { return scoreLabel?.text }
    }
}
