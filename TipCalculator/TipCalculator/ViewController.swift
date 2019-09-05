//
//  ViewController.swift
//  TipCalculator
//
//  Created by Luis Alva on 9/4/19.
//  Copyright © 2019 Luis Alva. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Total: UILabel!
    @IBOutlet weak var Tip: UILabel!
    @IBOutlet weak var InputField: UITextField!
    @IBOutlet weak var Percentage: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculateTip(_ sender: Any) {
        let tipPercent = [0.10, 0.15]
        let bill = Double(InputField.text!) ?? 0
        let tip = (bill * tipPercent[Percentage.selectedSegmentIndex])
        let total = tip + bill;
        Tip.text = String(format: "$%.2f", tip)
        Total.text = String(format: "$%.2f", total)
        
    }
}

