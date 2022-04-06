//
//  CoffeeShopsModel.swift
//  Coffee
//
//  Created by Александр Прайд on 27.03.2022.
//

import UIKit

struct CoffeeShopsModel {
    
    var shopTitle: String
    var distance: String
    
}

extension CoffeeShopsModel {
    
    static var sampleData = [CoffeeShopsModel(shopTitle: "BEDOEV COFFEE", distance: "1 км от вас"),
                             CoffeeShopsModel(shopTitle: "Coffee Like", distance: "2 км от вас"),
                             CoffeeShopsModel(shopTitle: "EM&DI Coffee and Snacks", distance: "1 км от вас"),
                             CoffeeShopsModel(shopTitle: "Коффе есть", distance: "300 м от вас"),
                             CoffeeShopsModel(shopTitle: "BEDOEV COFFEE 2", distance: "3 км от вас")
    
    ]
}
