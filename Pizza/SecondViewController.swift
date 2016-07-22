//
//  SecondViewController.swift
//  Pizza
//
//  Created by Denise Banh on 7/21/16.
//  Copyright © 2016 Denise Banh. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

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
    }
    
    
    @IBOutlet weak var Medium: UILabel!
    
    @IBAction func MediumStepper(sender: UIStepper) {
        self.Medium.text = Int(sender.value).description
    }
    
    @IBOutlet weak var Large: UILabel!
    
    @IBAction func LargeStepper(sender: UIStepper) {
        self.Large.text = Int(sender.value).description
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
