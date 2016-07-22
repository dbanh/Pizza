//
//  TestViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/21/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
       @IBOutlet weak var TestLabel: UILabel!
    var PassedPizza = [CustomPizza]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let otherVC = ViewController()
        PassedPizza = otherVC.PizzaOrder
        
        TestLabel.text = PassedPizza[0].size

        // Do any additional setup after loading the view.
    }

 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
