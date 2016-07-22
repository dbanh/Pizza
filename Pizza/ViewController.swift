//
//  ViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/18/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Cheese: UISwitch!
    
    @IBOutlet weak var Tomato: UISwitch!
    
    @IBOutlet weak var Peppers: UISwitch!
    
    @IBOutlet weak var Onions: UISwitch!
    
    @IBOutlet weak var Sausage: UISwitch!
    
    @IBOutlet weak var Ham: UISwitch!
    
    @IBOutlet weak var Chicken: UISwitch!
    
    @IBOutlet weak var Small: UIButton!
    
    @IBOutlet weak var Medium: UIButton!
    
    @IBOutlet weak var Large: UIButton!
    
    
    var PizzaOrder = [CustomPizza]()
    var DrinkOrder = [CustomDrink]()
    var PizzaSize = ""
    
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
    
    @IBAction func SmallSize(sender: UIButton) {
        self.PizzaSize = "small"
    }
    
    @IBAction func MediumSize(sender: UIButton) {
        self.PizzaSize = "medium"
    }
    @IBAction func LargeSize(sender: UIButton) {
        self.PizzaSize = "large"
    }
    
    @IBAction func AddPizza(sender: UIButton) {
        let CheeseBool = Cheese.on
        let TomatoBool = Tomato.on
        let PeppersBool = Peppers.on
        let OnionsBool = Onions.on
        let SausageBool = Sausage.on
        let HamBool = Ham.on
        let ChickenBool = Chicken.on
        
    /*
        var PizzaSize = ""
    
        if(Small.highlighted == true){
            PizzaSize = "small"
        }
        else if(Medium.highlighted == true){
            PizzaSize = "medium"
        }
        else if(Large.highlighted == true) {
            PizzaSize = "large"
        }
 */
        
        
        let PizzaOne = CustomPizza(size: PizzaSize, tomato: TomatoBool, cheese: CheeseBool, peppers: PeppersBool, onions: OnionsBool, sausage: SausageBool, ham: HamBool, chicken: ChickenBool)
        
        
        PizzaOrder.append(PizzaOne)
        self.performSegueWithIdentifier("CartViewer", sender: self)
        /*
         
         For the next view
         var PassedPizza = [CustomPizza]()
         
         override func viewDidLoad() {
         super.viewDidLoad()
         
         
         
         
         //let otherVC = ViewController()
         //PassedPizza = otherVC.PizzaOrder
         
         self.TestLabel.text = PassedPizza[0].size
         */
        
        
    }
    
    
    // Segue array to Favorites ViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "CartViewer") {
            
            var svc = segue.destinationViewController as! OrderViewController
            
            svc.PassedPizza = self.PizzaOrder
            svc.PassedDrink = self.DrinkOrder
            
            /* var destinationViewController: TestViewController = segue.destinationViewController as! TestViewController
             var arrayToSegue: [CustomPizza] = PizzaOrder
             destinationViewController.PassedPizza = arrayToSegue
             */
        }
    }
    


    @IBAction func OrderPizzaButton(sender: AnyObject) {
    }
}

