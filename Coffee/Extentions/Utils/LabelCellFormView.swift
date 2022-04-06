//
//  LabelCellFormView.swift
//  Coffee
//
//  Created by Александр Прайд on 29.03.2022.
//

import UIKit

class LabelCellFormView: UIView {
    
    init(nameLabel: UILabel, distanceLabel: UILabel) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        distanceLabel.translatesAutoresizingMaskIntoConstraints = false
        

        self.addSubview(nameLabel)
        self.addSubview(distanceLabel)
        
        NSLayoutConstraint.activate([
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            distanceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6),
            distanceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 6)
        
        ])
        
        bottomAnchor.constraint(equalTo: nameLabel.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
