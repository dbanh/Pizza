//
//  OrderViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/22/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class OrderViewController: UIViewController/*, UITableViewDelegate, UITableViewDataSource */{
    
    var PassedPizza = [CustomPizza]()
    var PassedDrink = [CustomDrink]()


   // @IBOutlet weak var Order: UITableView!
    /*
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PassedPizza.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("customcell", forIndexPath: indexPath) as! UITableViewCell
        cell.textLabel?.text = PassedPizza[indexPath.item].size
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
 */
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        //func viewDidAppear(animated: Bool) {
          //  super.viewDidAppear(animated)
            //Order.reloadData()
        //}
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func ReturnToMenu(sender: UIButton) {
        self.performSegueWithIdentifier("ReturnToMenu", sender: self)
    }
    // Segue array to Favorites ViewController
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if(segue.identifier == "ReturnToMenu") {
            
            var svc = segue.destinationViewController as! MainPageViewController
            
            svc.PizzaOrder = self.PassedPizza
            svc.DrinkOrder = self.PassedDrink
            
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
