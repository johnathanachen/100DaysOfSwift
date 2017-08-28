//
//  Model.swift
//  Tip Calculator
//
//  Created by Johnathan Chen on 8/28/17.
//  Copyright © 2017 JCSwifty. All rights reserved.
//

import Foundation

class Model {
    
    var subtotalFromTextField = "0.00"
    var tipPercentFromSlider = 15
    
    // MARK: - Decimals for Calulations
    var subtotalAsDecimal: NSDecimalNumber {
        return NSDecimalNumber(string: subtotalFromTextField)
    }
    
    var tipPercent: NSDecimalNumber {
        return NSDecimalNumber(value: Double(tipPercentFromSlider/100))
    }
    
    var tipAmount: NSDecimalNumber {
        return subtotalAsDecimal.multiplying(by: tipPercent)
    }
    
    var totalAmount: NSDecimalNumber {
        return subtotalAsDecimal.adding(tipAmount)
    }
    
    // MARK: - Convert to Currency
    let formatter = NumberFormatter()
    
    var subtotalAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: subtotalAsDecimal as NSNumber)!
    }
    
    var tipAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: tipAmount as NSNumber)!
    }
    
    var totalAmountAsCurrency: String {
        formatter.numberStyle = .currency
        return formatter.string(from: totalAmount as NSNumber)!
    }
    
}
