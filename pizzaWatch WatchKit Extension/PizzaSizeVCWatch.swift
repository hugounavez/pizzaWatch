//
//  PizzaSizeVCWatch.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/21/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import WatchKit
import Foundation


class PizzaSizeVCWatch: WKInterfaceController {
    var order: Order = Order()
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        //let contexto = context as! Order
        
        
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

    
    @IBAction func grandeButton(_ sender: AnyObject) {
        self.order.pizzaSize = "Grande"
        pushController(withName: "massTypeController", context: self.order)
        
    }
    
    @IBAction func medianaButton(_ sender: AnyObject) {
        self.order.pizzaSize = "Mediana"
        pushController(withName: "massTypeController", context: self.order)
        
    }
    
    
    @IBAction func chicaButton(_ sender: AnyObject) {
        self.order.pizzaSize = "Chica"
        pushController(withName: "massTypeController", context: self.order)
        
    }
    
    
}
