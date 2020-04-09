//
//  MainViewControllerTests.swift
//  ExampleAppTests
//
//  Created by Gabriel Mazzei on 09/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

@testable import ExampleApp
import FBSnapshotTestCase

final class MainViewControllerTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        
        recordMode = false
    }
    
    private func newController() -> MainViewController {
        let controller = MainViewController()
        controller.view.frame = UIScreen.main.bounds
        return controller
    }

    func testControllerView() {
        let controller = newController()
        FBSnapshotVerifyView(controller.view)
    }
}
