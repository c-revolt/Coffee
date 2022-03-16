//
//  Label Extantion.swift
//  Coffee
//
//  Created by Александр Прайд on 16.03.2022.
//

import UIKit

extension UILabel {

    convenience init(text: String,
                     textColor: UIColor = .labelTextColor(),
                     font: UIFont? = .sfProDisplay15()) {
        self.init()
        
        self.text = text
        self.textColor = textColor
        self.font = font
    }
}
