//
//  Extantion UIButton.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

extension UIButton {
    
    convenience init(title: String,
                     titleColor: UIColor,
                     font: UIFont?,
                     backgroundColor: UIColor,
                     cornerRadius: CGFloat = 5) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
    }
}
