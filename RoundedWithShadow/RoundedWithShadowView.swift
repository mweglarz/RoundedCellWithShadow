//
//  RoundedWithShadowView.swift
//  RoundedWithShadow
//
//  Created by marcin on 16/06/2018.
//  Copyright © 2018 tuple.marcin.weglarz. All rights reserved.
//

import UIKit

class RoundedWithShadowView: UIView {
    
    var roundedView = UIView()

    init() {
        super.init(frame: CGRect.zero)
        initializeUI()
        createConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func addSubview(_ view: UIView) {
        roundedView.addSubview(view)
    }
    
    private func setupRoundedView() {
        roundedView.backgroundColor = .cyan
        super.addSubview(roundedView)
        roundedView.translatesAutoresizingMaskIntoConstraints = false
        [
            roundedView.leadingAnchor.constraint(equalTo: leadingAnchor),
            roundedView.trailingAnchor.constraint(equalTo: trailingAnchor),
            roundedView.topAnchor.constraint(equalTo: topAnchor),
            roundedView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0.0)
        ].forEach { $0.isActive = true }
    }
    
    private func initializeUI() {
        backgroundColor = .lightGray
        backgroundColor = .clear
        setupRoundedView()

        roundedView.layer.cornerRadius = 12.0
        roundedView.layer.masksToBounds = true

        layer.shadowColor = UIColor.gray.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowRadius = 5
        layer.shadowOpacity = 1
    }
    
    private func createConstraints() {
        
    }
}
