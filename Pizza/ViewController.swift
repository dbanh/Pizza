//
//  ViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/18/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var Small: UIButton!
    @IBOutlet weak var Medium: UIButton!
    @IBOutlet weak var Large: UIButton!
    
    @IBOutlet weak var Cheese: UISwitch!
    
    @IBOutlet weak var Tomato: UISwitch!
    
    @IBOutlet weak var Peppers: UISwitch!
    @IBOutlet weak var Onions: UISwitch!
    
    @IBOutlet weak var Sausage: UISwitch!
    
    @IBOutlet weak var Ham: UISwitch!
    
    @IBOutlet weak var Chicken: UISwitch!
    
    var PizzaOrder = [CustomPizza]()
    
    
    @IBAction func Submit(sender: UIButton) {
        
        let CheeseBool = Cheese.on
        let TomatoBool = Tomato.on
        let PeppersBool = Peppers.on
        let OnionsBool = Onions.on
        let SausageBool = Sausage.on
        let HamBool = Ham.on
        let ChickenBool = Chicken.on
        
        
        let PizzaOne = CustomPizza(size: "Small", tomato: TomatoBool, cheese: CheeseBool, peppers: PeppersBool, onions: OnionsBool, sausage: SausageBool, ham: HamBool, chicken: ChickenBool)
        
    
        PizzaOrder.append(PizzaOne)
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    // Hello
    

    @IBAction func OrderPizzaButton(sender: AnyObject) {
    }
}

