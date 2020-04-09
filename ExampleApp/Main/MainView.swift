//
//  MainView.swift
//  ExampleApp
//
//  Created by Gabriel Mazzei on 08/04/2020.
//  Copyright © 2020 Gabriel Mazzei. All rights reserved.
//

import Foundation
import UIKit

protocol MainViewDelegate: class {
    func didTapCentralButton()
}

private struct Constants {
    static let backgroundColor: UIColor = .white
    static let centralButtonWidth: CGFloat = 200
    static let centralButtonHeight: CGFloat = 100
    static let centralButtonBackgroundColor: UIColor = .blue
}

final class MainView: UIView {
    
    weak var delegate: MainViewDelegate?
    
    private let centralButton: UIButton
    
    // MARK: - Initializers
    
    init() {
        centralButton = UIButton()
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Layout
    
    private func setupViews() {
        backgroundColor = Constants.backgroundColor
        setupCentralButton()
    }
    
    private func setupCentralButton() {
        addSubview(centralButton)
        centralButton.accessibilityIdentifier = "Main View Button"
        centralButton.setTitle("Tap me!", for: .normal)
        centralButton.backgroundColor = Constants.centralButtonBackgroundColor
        centralButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            centralButton.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor),
            centralButton.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
            centralButton.widthAnchor.constraint(equalToConstant: Constants.centralButtonWidth),
            centralButton.heightAnchor.constraint(equalToConstant: Constants.centralButtonHeight),
        ])
        
        centralButton.addTarget(self, action: #selector(centralButtonTapped), for: .touchUpInside)
    }
    
    // MARK: - Gesture recognizers
    
    @objc private func centralButtonTapped() {
        delegate?.didTapCentralButton()
    }
}
