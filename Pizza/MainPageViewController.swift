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
    
    
    // Segue array to Favorites ViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "CustomizePizza") {
            
            var svc = segue.destinationViewController as! ViewController
            
            svc.PizzaOrder = self.PizzaOrder
            
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
