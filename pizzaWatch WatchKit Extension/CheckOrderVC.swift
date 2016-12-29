//
//  CheckOrderVC.swift
//  pizzaWatch
//
//  Created by Hugo Reyes on 12/27/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import WatchKit
import Foundation


class CheckOrderVC: WKInterfaceController {
    var order: Order = Order()
    
    @IBOutlet var checkOrderLabel: WKInterfaceLabel!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let contexto = context as! Order
        
        self.order = contexto
        // Configure interface objects here.
        
        
        self.checkOrderLabel.setText("Tu orden fue es la siguiente: \n " + "Tamaño: " + self.order.pizzaSize + ".\n" + "Masa: " + self.order.massType + ".\n" + "Queso: " + self.order.cheeseType + ".\n" + "Ingredientes: " +  self.order.ingredients.joined(separator: ", "))
        
        
        
        
        //self.checkOrderLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        //self.checkOrderLabel.numberOfLines = 0
        
        
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    

}
