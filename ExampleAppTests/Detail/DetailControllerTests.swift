//
//  DetailControllerTests.swift
//  ExampleAppTests
//
//  Created by Gabriel Mazzei on 09/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

@testable import ExampleApp
import FBSnapshotTestCase

final class DetailControllerTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        
        recordMode = false
    }
    
    private func newController() -> DetailController {
        let controller = DetailController()
        controller.view.frame = UIScreen.main.bounds
        return controller
    }

    func testControllerView() {
        let controller = newController()
        FBSnapshotVerifyView(controller.view)
    }
    
    func testButtonChangeText() {
        let controller = newController()
        controller.didTapCentralButton()
        FBSnapshotVerifyView(controller.view)
    }
}
