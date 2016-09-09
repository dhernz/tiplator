//
//  ViewController.swift
//  Tiplator
//
//  Created by Doris Hernandez on 9/7/16.
//  Copyright © 2016 Doris Hernandez. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLaber: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewWillAppear(animated: Bool) {
        billField.becomeFirstResponder()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
    
    @IBAction func onSelect(sender: AnyObject) {
        view.endEditing(true)
    }
    
    
    @IBAction func calculateTip(sender: AnyObject) {
        
        let tipPercentages = [0.15,0.20,0.25]
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLaber.text = String(format: "$%.2f",total)
    }
}

