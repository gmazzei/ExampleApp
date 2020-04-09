//
//  DetailViewTests.swift
//  ExampleAppTests
//
//  Created by Gabriel Mazzei on 09/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

@testable import ExampleApp
import FBSnapshotTestCase

final class DetailViewTests: FBSnapshotTestCase {
    
    override func setUp() {
        super.setUp()
        
        recordMode = false
    }
    
    private func newView() -> DetailView {
        let view = DetailView()
        view.frame = UIScreen.main.bounds
        return view
    }
    
    func testView() {
        let view = newView()
        FBSnapshotVerifyView(view)
    }
}
