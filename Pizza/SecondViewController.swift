//
//  SecondViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/21/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var PizzaOrder = [CustomPizza]()
    var DrinkOrder = [CustomDrink]()
    
    var SmallCount = 0
    var MediumCount = 0
    var LargeCount = 0
    
    var DrinkSelect = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Small: UILabel!

    @IBAction func SmallStepper(sender: UIStepper) {
        self.Small.text = Int(sender.value).description
        SmallCount = Int(sender.value)
    }
    
    
    @IBOutlet weak var Medium: UILabel!
    
    @IBAction func MediumStepper(sender: UIStepper) {
        self.Medium.text = Int(sender.value).description
        MediumCount = Int(sender.value)
        
    }
    
    @IBOutlet weak var Large: UILabel!
    
    @IBAction func LargeStepper(sender: UIStepper) {
        self.Large.text = Int(sender.value).description
        LargeCount = Int(sender.value)
    }
    
    
    @IBOutlet weak var Coke: UIButton!
    
    @IBOutlet weak var SevenUp: UIButton!
    
    @IBOutlet weak var Fanta: UIButton!
    
    @IBOutlet weak var CherryCoke: UIButton!
    
    @IBAction func CokeSelect(sender: UIButton) {
        self.DrinkSelect = "Coke"
    }
    
    @IBAction func SevenUpSelect(sender: UIButton) {
        self.DrinkSelect = "7Up"
    }
    
    @IBAction func FantaSelect(sender: UIButton) {
        self.DrinkSelect = "Fanta Orange"
    }
    
    @IBAction func CherryCokeSelect(sender: UIButton) {
        self.DrinkSelect = "Cherry Coke"
    }
    
    @IBAction func AddToOrder(sender: UIButton) {
    
        
        let SmallSize = "Small"
        let MediumSize = "Medium"
        let LargeSize = "Large"
        
        if(SmallCount > 0){
            let DrinkOne = CustomDrink(drink: DrinkSelect, size: SmallSize, count: SmallCount)
            
            DrinkOrder.append(DrinkOne)
        }
        
        if(MediumCount > 0){
            let DrinkTwo = CustomDrink(drink: DrinkSelect, size: MediumSize, count: SmallCount)
            
            DrinkOrder.append(DrinkTwo)
        }
        
        if(LargeCount > 0){
            let DrinkThree = CustomDrink(drink: DrinkSelect, size: LargeSize, count: SmallCount)
            
            DrinkOrder.append(DrinkThree)
        }
        

        self.performSegueWithIdentifier("CartViewerDrinks", sender: self)
    }
    
    // Segue array to Favorites ViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "CartViewerDrinks") {
            
            var svc = segue.destinationViewController as! OrderViewController
            
            svc.PassedPizza = self.PizzaOrder
            svc.PassedDrink = self.DrinkOrder
            
            /* var destinationViewController: TestViewController = segue.destinationViewController as! TestViewController
             var arrayToSegue: [CustomPizza] = PizzaOrder
             destinationViewController.PassedPizza = arrayToSegue
             */
        }
    }

    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
