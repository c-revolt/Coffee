//
//  Extantion UIButton.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

extension UIButton {
    
    convenience init(title: String,
                     titleColor: UIColor = .titleButtonColor(),
                     font: UIFont? = .sfProDisplay18(),
                     backgroundColor: UIColor = .buttonCoffeeColor(),
                     cornerRadius: CGFloat = 24.5) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        
        // shadows
        self.layer.masksToBounds = false
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 0.2
        self.layer.shadowOffset = CGSize(width: 0, height: 4)
    }
    
}
