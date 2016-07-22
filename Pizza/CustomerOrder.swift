//
//  CustomerOrder.swift
//  Pizza
//
//  Created by Denise Banh on 7/21/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class Order {
    var PizzaOrder = [CustomPizza]()
}

var sharedOrder : Order {
    struct Static {
        static let instance : Order = Order()
    }
    return Static.instance
}




