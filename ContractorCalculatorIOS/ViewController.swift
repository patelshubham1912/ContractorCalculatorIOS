//
//  ViewController.swift
//  ContractorCalculatorIOS
//
//  Created by shubham patel on 11/20/22.
//

import UIKit
var subTotal = Double()
var tax = Double()
var total = Double()
let laborCost = Double()
let materialCost = Double()

class ViewController: UIViewController {

    @IBOutlet weak var laborCostText: UITextField!
    @IBOutlet weak var materialsCostText: UITextField!
    @IBOutlet weak var subTotalLabel: UILabel!
    @IBOutlet weak var taxLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBAction func calculate(_ sender: Any) {
        let laborCost = Double(laborCostText.text!)
        let materialCost = Double(materialsCostText.text!)
        
        subTotal = laborCost! + materialCost!
        tax = subTotal * 5 / 100.0
        total = subTotal + tax
        
        subTotalLabel.text = "$" + String(format: "%.2f", arguments: [subTotal])
        
        taxLabel.text = "$" + String(format: "%.2f", arguments: [tax])
        
        totalLabel.text = "$" + String(format: "%.2f", arguments: [total])
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

