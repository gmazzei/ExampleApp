//
//  MainController.swift
//  ExampleApp
//
//  Created by Gabriel Mazzei on 08/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

import UIKit

class MainController: UIViewController, MainViewDelegate {
    
    private lazy var mainView: MainView = {
        let view = MainView()
        view.delegate = self
        return view
    }()
    
    // MARK: - View lifecycle
    
    override func loadView() {
        view = mainView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - MainViewDelegate
    
    func didTapCentralButton() {
        let controller = DetailController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
}
