//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import UIKit

final class TimeBarViewController: UIViewController {
    @IBOutlet private weak var barView: UIView?
    
    var progress: Float = 1 {
        didSet { /*update bar frame*/ }
    }
}
