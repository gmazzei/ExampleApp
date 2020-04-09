//
//  MainViewControllerTests.swift
//  ExampleAppUITests
//
//  Created by Gabriel Mazzei on 08/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

import XCTest

class MainViewControllerTests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    func testFirstButtonExists() {
        let app = XCUIApplication()
        app.launch()
        
        let button = app.buttons["Main View Button"]
        XCTAssertTrue(button.exists, "Could not find button.")
    }    
}
