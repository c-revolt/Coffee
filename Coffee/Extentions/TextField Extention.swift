//
//  TextField Extention.swift
//  Coffee
//
//  Created by Александр Прайд on 17.03.2022.
//

import UIKit

extension UITextField {
    
    convenience init(placeholder: String,
                     font: UIFont? = UIFont.sfProDisplay15(),
                     borderWidth: CGFloat = 1.5,
                     cornerRadius: CGFloat = 24.5) {
        self.init()
        
        self.placeholder = placeholder
        self.font = font
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
    }
}
