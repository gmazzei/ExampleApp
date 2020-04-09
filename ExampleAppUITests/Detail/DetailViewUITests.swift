//
//  DetailViewUITests.swift
//  ExampleAppUITests
//
//  Created by Gabriel Mazzei on 09/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

import XCTest

class DetailViewUITests: XCTestCase {

    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
        
    func testButtonExists() {
        let app = XCUIApplication()
        app.launch()
        
        let mainViewButton = app.buttons["Main View Button"]
        XCTAssertTrue(mainViewButton.exists, "Main view button does not exist.")
        mainViewButton.tap()
        
        let detailViewButton = app.buttons["Detail View Button"]
        
        XCTAssertTrue(detailViewButton.exists, "Could not find button.")
        XCTAssertEqual(detailViewButton.label, "This is the second button!", "Label is not correct.")
    }
    
    func testButtonChangesText() {
        let app = XCUIApplication()
        app.launch()
        
        let mainViewButton = app.buttons["Main View Button"]
        XCTAssertTrue(mainViewButton.exists, "Main view button does not exist.")
        mainViewButton.tap()
        
        let detailViewButton = app.buttons["Detail View Button"]
        detailViewButton.tap()
        
        XCTAssertTrue(detailViewButton.exists, "Could not find button.")
        XCTAssertEqual(detailViewButton.label, "Second button tapped!", "Label is not correct.")
    }
}
