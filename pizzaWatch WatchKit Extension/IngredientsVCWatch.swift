//
//  IngredientsVCWatch.swift
//  pizzaApp
//
//  Created by Hugo Reyes on 12/21/16.
//  Copyright © 2016 Hugo Reyes. All rights reserved.
//

import WatchKit
import Foundation


class IngredientsVCWatch: WKInterfaceController {
    var order: Order = Order()
    
    
    @IBOutlet var jamonButton: WKInterfaceButton!
    @IBOutlet var peperoniButton: WKInterfaceButton!
    
    @IBOutlet var pavoButton: WKInterfaceButton!
    @IBOutlet var salchichaButton: WKInterfaceButton!
    
    @IBOutlet var aceitunaButton: WKInterfaceButton!
    
    @IBOutlet var cebollaButton: WKInterfaceButton!
    
    @IBOutlet var pimientoButton: WKInterfaceButton!
    
    @IBOutlet var pinaButton: WKInterfaceButton!
    
    @IBOutlet var anchoaButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)

        // Configure interface objects here.
        let contexto = context as! Order
        
        self.order = contexto

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

    func deleteSingleElementFromList(lista: [String], key: String) -> [String]{
        // This function deletes a certain element from the input list
        // Return the list without the element specified as the key. This key element
        // is eliminated from the list.
        var listaToReturn = lista
        if let index = listaToReturn.index(of: key) {
            listaToReturn.remove(at: index)
        }
        
        return listaToReturn
    }

    
    @IBAction func jamonAction() {
        self.jamonButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Jamon")
    }
    
    
    @IBAction func pepperoniAction() {
        self.peperoniButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Pepperoni")
    }
    
    @IBAction func pavoAction() {
        self.pavoButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Pavo")
    }
    
    @IBAction func salchichaAction() {
        self.salchichaButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Salchicha")
    }
    
    @IBAction func aceitunaAction() {
        self.aceitunaButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Aceituna")
    }
    
    @IBAction func cebollaAction() {
        self.cebollaButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Cebolla")

    }
    
    @IBAction func pimientoAction() {
        self.pimientoButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Pimiento")
    }
    
    @IBAction func pinaAction() {
        self.pinaButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Piña")
    }
    
    @IBAction func anchoaAction() {
        self.anchoaButton.setBackgroundColor(UIColor.gray)
        self.order.ingredients.append("Anchoa")
    }


    @IBAction func continuarActin() {
        self.order.ingredients = Array(Set(self.order.ingredients))
        
    pushController(withName: "checkOrderVC", context: self.order)
    }

    
    

    
    
}
