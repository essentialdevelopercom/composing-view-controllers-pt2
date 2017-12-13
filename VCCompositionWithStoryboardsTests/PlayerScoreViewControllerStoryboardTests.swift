//
//  Copyright © 2017 Essential Developer. All rights reserved.
//

import XCTest
@testable import VCCompositionWithStoryboards

class PlayerScoreViewControllerStoryboardTests: XCTestCase {
    
    // MARK: PlayerOne storyboard tests
    
    func test_playerOneStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(makePlayerOneStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerOneStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())

        vc.name = "a name"
        
        XCTAssertEqual(vc.nameLabel?.text, "a name")
    }
    
    func test_playerOneStoryboard_scoreSetter_updatesScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerOneStoryboard())

        vc.score = "a score"
        
        XCTAssertEqual(vc.scoreLabel?.text, "a score")
    }

    // MARK: PlayerTwo storyboard tests
    
    func test_playerTwoStoryboardInitialViewController_isPlayerScoreViewController() {
        XCTAssertTrue(makePlayerTwoStoryboard().instantiateInitialViewController() is PlayerScoreViewController)
    }
    
    func test_playerTwoStoryboard_nameSetter_updatesNameLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        
        vc.name = "a name"
        
        XCTAssertEqual(vc.nameLabel?.text, "a name")
    }
    
    func test_playerTwoStoryboard_scoreSetter_updatesScoreLabel() {
        let vc = makePlayerScoreViewController(storyboard: makePlayerTwoStoryboard())
        
        vc.score = "a score"
        
        XCTAssertEqual(vc.scoreLabel?.text, "a score")
    }

    // MARK: Helpers
    
    private func makePlayerOneStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerOne", bundle: nil)
    }
    
    private func makePlayerTwoStoryboard() -> UIStoryboard {
        return UIStoryboard(name: "PlayerTwo", bundle: nil)
    }

    private func makePlayerScoreViewController(storyboard: UIStoryboard) -> PlayerScoreViewController {
        let vc = storyboard.instantiateInitialViewController() as! PlayerScoreViewController
        _ = vc.view
        return vc
    }
}
