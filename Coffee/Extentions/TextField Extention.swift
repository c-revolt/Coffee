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
                     textColor: UIColor = .placeholderColor(),
                     borderWidth: CGFloat = 1.5,
                     cornerRadius: CGFloat = 24.5,
                     isSecureTextEntry: Bool) {
        self.init()
        self.placeholder = placeholder
        self.font = font
        self.layer.borderWidth = borderWidth
        self.layer.cornerRadius = cornerRadius
        self.isSecureTextEntry = isSecureTextEntry
    }
    
    func indent(size: CGFloat) {
        self.leftView = UIView(frame: CGRect(x: self.frame.minX, y: self.frame.minY, width: size, height: self.frame.height))
        self.leftViewMode = .always
    }
}


