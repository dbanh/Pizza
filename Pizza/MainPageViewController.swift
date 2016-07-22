//
//  MainPageViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/22/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class MainPageViewController: UIViewController {
    
    var PizzaOrder = [CustomPizza]()
    var DrinkOrder = [CustomDrink]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func CustomizePizza(sender: UIButton) {
        self.performSegueWithIdentifier("CustomizePizza", sender: self)
    }
    
    
    
    @IBAction func CustomizeDrinks(sender: UIButton) {
        self.performSegueWithIdentifier("CustomizeDrink", sender: self)
    }
    
    
    @IBAction func ViewOrder(sender: UIButton) {
        self.performSegueWithIdentifier("ViewOrder", sender: self)
    }
    
    // Segue array to Favorites ViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "CustomizePizza") {
            
            var svc = segue.destinationViewController as! ViewController
            
            svc.PizzaOrder = self.PizzaOrder
            svc.DrinkOrder = self.DrinkOrder
            
            /* var destinationViewController: TestViewController = segue.destinationViewController as! TestViewController
             var arrayToSegue: [CustomPizza] = PizzaOrder
             destinationViewController.PassedPizza = arrayToSegue
             */
        }
        else if(segue.identifier == "CustomizeDrink") {
            
            var svc = segue.destinationViewController as! SecondViewController
            
            svc.PizzaOrder = self.PizzaOrder
            svc.DrinkOrder = self.DrinkOrder
    }
        else if(segue.identifier == "ViewOrder") {
            
            var svc = segue.destinationViewController as! OrderViewController
            
            svc.PassedPizza = self.PizzaOrder
            svc.PassedDrink = self.DrinkOrder
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
