//
//  ViewController.swift
//  currencyConverter
//
//  Created by LouieDavis on 7/5/17.
//  Copyright © 2017 jpsautner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    enum ExchangeCurrency: Int {
        case euroExchangeRate
        case yenExhangeRate
        case poundExchangeRate
        case francExchangeRate
        case canadianExchangeRate
    }
    
    @IBOutlet weak var amountEntryField: UITextField!
    @IBOutlet weak var currencySelector: UISegmentedControl!
    @IBOutlet weak var convertedCurrencyField: UITextField!
    
    @IBAction func convertCurrencyButton(_ sender: UIButton) {
 
        if let currencyAmount = Double(amountEntryField.text!) {
        var exchangeRate = 0.0
            /*
            if let exchangeCurrency = ExchangeCurrency(rawValue: currencySelector.selectedSegmentIndex) {
                switch exchangeCurrency {
                case .euroExchangeRate:
                }
            }
            */
            
            switch currencySelector.selectedSegmentIndex {
            case 0: exchangeRate = 0.88
            case 1: exchangeRate = 113.22
            case 2: exchangeRate = 0.773991
            case 3: exchangeRate = 0.97
            case 4: exchangeRate = 1.30
            default: break
                
            }
        
            let totalAmount = exchangeRate * currencyAmount
            
            if (!amountEntryField.isEditing) {
                amountEntryField.text = String(format: "%.2f", amountEntryField)
            }
            //convertedCurrencyField.text = String(format: "%.2f", convertedCurrencyField)
            // convertedCurrencyField.text = String(totalAmount) //String(totalAmount)
            convertedCurrencyField.text = String(format: "%.2f", totalAmount)
            
        } else {
            amountEntryField.text = ""
            convertedCurrencyField.text = ""
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}

