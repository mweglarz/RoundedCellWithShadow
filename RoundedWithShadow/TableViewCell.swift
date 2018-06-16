//
//  TableViewCell.swift
//  RoundedWithShadow
//
//  Created by marcin on 16/06/2018.
//  Copyright © 2018 tuple.marcin.weglarz. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    let roundedContainer = RoundedWithShadowView()
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initializeUI()
        createConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initializeUI() {
        contentView.addSubview(roundedContainer)
    }
    
    private func createConstraints() {
        roundedContainer.translatesAutoresizingMaskIntoConstraints = false
        [
            roundedContainer.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 20.0),
            roundedContainer.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -20.0),
            roundedContainer.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20.0),
            roundedContainer.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -20.0),
        ].forEach { $0.isActive = true }
    }
    
    func setup() {
        let view = UIView()
        roundedContainer.addSubview(view)
        view.backgroundColor = .green

        view.translatesAutoresizingMaskIntoConstraints = false
        [
            view.leadingAnchor.constraint(equalTo: roundedContainer.leadingAnchor),
            view.trailingAnchor.constraint(equalTo: roundedContainer.trailingAnchor),
            view.topAnchor.constraint(equalTo: roundedContainer.topAnchor),
            view.bottomAnchor.constraint(equalTo: roundedContainer.bottomAnchor)
        ].forEach { $0.isActive = true }
    }
}
