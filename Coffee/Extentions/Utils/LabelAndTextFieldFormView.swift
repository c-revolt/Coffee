//
//  LabelAndTextFieldFormView.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

class LabelAndTextFieldFormView: UIView {
    
    init(label: UILabel, textField: UITextField) {
        super.init(frame: .zero)
        
        self.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textField.translatesAutoresizingMaskIntoConstraints = false
        
        self.addSubview(label)
        self.addSubview(textField)
        
        NSLayoutConstraint.activate([
            
            label.topAnchor.constraint(equalTo: self.topAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor)
            
        ])
        
        NSLayoutConstraint.activate([
        
            textField.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 7.51),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            textField.heightAnchor.constraint(equalToConstant: 47)
            
        ])
        
        bottomAnchor.constraint(equalTo: textField.bottomAnchor).isActive = true
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}


