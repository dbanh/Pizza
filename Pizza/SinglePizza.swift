//
//  SinglePizza.swift
//  Pizza
//
//  Created by Denise Banh on 7/21/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class CustomPizza{
    // MARK: Properties
    
    var size: String
    var tomato: Bool
    var cheese: Bool
    var peppers: Bool
    var onions: Bool
    var sausage: Bool
    var ham: Bool
    var chicken: Bool
    
    // MARK: Initialization
    
    /*
    init()
    {
        self.size = " "
        self.tomato = false
        self.cheese = false
        self.peppers = false
        self.onions = false
        self.sausage = false
        self.ham = false
        self.chicken = false
        
    }
    */
    
     init(size: String, tomato: Bool, cheese: Bool, peppers: Bool, onions: Bool, sausage: Bool, ham: Bool, chicken: Bool){
     self.size = size
     self.tomato = tomato
     self.cheese = cheese
     self.peppers = peppers
     self.onions = onions
     self.sausage = sausage
     self.ham = ham
     self.chicken = chicken
     
        /*
     //Initialization will fail if a pizza size is not selected
     if size.isEmpty {
     return nil
     }
 */
     }
    
    
    /*
     // MARK: Types
     
     struct Pizzas {
     static let sizeKey = "size"
     static let tomatoKey = "tomato"
     static let cheeseKey = "key"
     static let peppersKey = "peppers"
     static let onionsKey = "onions"
     static let sausageKey = "sausage"
     static let hamKey = "ham"
     static let chickenKey = "chicken"
     }
     */
    
}

