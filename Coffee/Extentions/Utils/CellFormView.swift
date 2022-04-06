//
//  CellFormView.swift
//  Coffee
//
//  Created by Александр Прайд on 25.03.2022.
//

import UIKit

class CellFormView: UIView {
    
    init(nameLabel: UILabel, distanceLabel: UILabel) {
        super.init(frame: .zero)
        
        
        self.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        distanceLabel.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(nameLabel)
        self.addSubview(distanceLabel)
        
        nameLabel.ancor(top: self.topAnchor,
                        leading: self.leadingAnchor,
                        bottom: self.bottomAnchor,
                        trailling: self.trailingAnchor,
                        padding: .init(top: 14, left: 10, bottom: 36, right: 86),
                        size: CGSize(width: 253, height: 21))
        
        distanceLabel.ancor(top: nameLabel.topAnchor,
                            leading: self.leadingAnchor,
                            bottom: self.bottomAnchor,
                            trailling: self.trailingAnchor,
                            padding: .init(top: 6, left: 10, bottom: 9, right: 199),
                            size: CGSize(width: 140, height: 21))
        
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 21),
            nameLabel.widthAnchor.constraint(equalToConstant: 253)
        
        ])
        
        NSLayoutConstraint.activate([
            distanceLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 6),
            distanceLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            distanceLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            distanceLabel.heightAnchor.constraint(equalToConstant: 21),
            distanceLabel.widthAnchor.constraint(equalToConstant: 140)
            
        ])
        
        bottomAnchor.constraint(equalTo: distanceLabel.bottomAnchor).isActive = true
        
    }
    
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
