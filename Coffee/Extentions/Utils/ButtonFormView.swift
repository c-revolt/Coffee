//
//  ButtonFormView.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

class ButtonFormView: UIView {
    
    init(firstButton: UIButton, secondButton: UIButton) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        firstButton.translatesAutoresizingMaskIntoConstraints = false
        secondButton.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(firstButton)
        self.addSubview(secondButton)
        
        NSLayoutConstraint.activate([
            
            firstButton.topAnchor.constraint(equalTo: self.topAnchor),
            firstButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            firstButton.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            firstButton.heightAnchor.constraint(equalToConstant: 47)
            
        ])
        
        NSLayoutConstraint.activate([
        
            secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 30.51),
            secondButton.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            secondButton.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            secondButton.heightAnchor.constraint(equalToConstant: 47)
            
        ])
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
