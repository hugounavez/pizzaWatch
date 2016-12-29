//
//  CheeseTypeVCWatch.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/21/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import WatchKit
import Foundation


class CheeseTypeVCWatch: WKInterfaceController {
    var order: Order = Order()
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let contexto = context as! Order
        
        self.order = contexto
        // Configure interface objects here.
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBAction func mozarelaButton(_ sender: AnyObject) {
        self.order.cheeseType = "Mozarela"
        pushController(withName: "ingredientsTypeController", context: self.order)
        
    }
    
    @IBAction func cheddarButton(_ sender: AnyObject) {
        self.order.cheeseType = "Cheddar"
        pushController(withName: "ingredientsTypeController", context: self.order)
        
    }
    
    @IBAction func parmesanoButton(_ sender: AnyObject) {
        self.order.cheeseType = "Parmesano"
        pushController(withName: "ingredientsTypeController", context: self.order)
        
    }
    
    @IBAction func sinQuesoButton(_ sender: AnyObject) {
        self.order.cheeseType = "Sin queso"
        pushController(withName: "ingredientsTypeController", context: self.order)
    }
    
    
    
    
}
