//
//  Order.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/8/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import Foundation

class Order: NSObject {
    // Pizza size. Tamaño de la pizza:
    var pizzaSize : String = ""
    // Mass type. Tipo de masa:
    var massType: String = ""
    // Cheese type. Tipo de queso
    var cheeseType: String = ""
    // Ingredients. Indredientes:
    var ingredients: [String] = [String]()
}

