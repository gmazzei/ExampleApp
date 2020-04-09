//
//  DetailController.swift
//  ExampleApp
//
//  Created by Gabriel Mazzei on 08/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

import UIKit

class DetailController: UIViewController, DetailViewDelegate {
    
    private lazy var detailView: DetailView = {
        let view = DetailView()
        view.delegate = self
        return view
    }()
    
    // MARK: - View lifecycle
    
    override func loadView() {
        view = detailView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - DetailViewDelegate
    
    func didTapCentralButton() {
        detailView.changeButtonText("Second button tapped!")
    }
}
