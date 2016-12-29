//
//  MassTypeVC.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/21/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import WatchKit
import Foundation


class MassTypeVCWatch: WKInterfaceController {

    var order: Order = Order()
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        let contexto = context as! Order
        
        self.order = contexto
        print(self.order.pizzaSize)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    
    @IBAction func gruesaButton(_ sender: AnyObject) {
        self.order.massType = "Gruesa"
        pushController(withName: "cheeseTypeController", context: self.order)
        
    }
    
    @IBAction func crujienteButton(_ sender: AnyObject) {
        self.order.massType = "Crujiente"
        pushController(withName: "cheeseTypeController", context: self.order)
        
    }
    
    
    @IBAction func delgadaButton(_ sender: AnyObject) {
        self.order.massType = "Delgada"
        pushController(withName: "cheeseTypeController", context: self.order)
    }
    


}
