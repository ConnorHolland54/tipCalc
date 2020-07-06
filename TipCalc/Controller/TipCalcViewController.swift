//
//  TipCalcViewController.swift
//  TipCalc
//
//  Created by Connor Holland on 7/6/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

import UIKit

class TipCalcViewController: UIViewController {

    // MARK: - Outlets
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var billAmountLabel: UILabel!
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tenPercentButton: UIButton!
    @IBOutlet weak var fifteenPercentButton: UIButton!
    @IBOutlet weak var twentyPercentButton: UIButton!
    @IBOutlet weak var customTipLabel: UILabel!
    @IBOutlet weak var customTipTextField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var totalAmountLabel: UILabel!
    
    var viewsLaidOut = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        if viewsLaidOut == false {
            setupView()
            viewsLaidOut = true
        }
    }

    // MARK: - Actions
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        guard let billAmount = billAmountTextField.text, !billAmount.isEmpty, let customTip = customTipTextField.text, !customTip.isEmpty else {return}
        let customTipDouble = Double(customTip)!
        let amount = Double(billAmount)!
        let totalAmount = tipCalculation(billAmount: amount, percentage: customTipDouble)
        let amountStr = String(format: "%.2f", totalAmount)
        totalAmountLabel.text = "$\(amountStr)"
    }
    
    @IBAction func PercentButtonTapped(_ sender: Any) {
        guard let billAmount = billAmountTextField.text, !billAmount.isEmpty else {return}
        let percentage = 10.0
        let amount = Double(billAmount)!
        let totalAmount = tipCalculation(billAmount: amount, percentage: percentage)
        let amountStr = String(format: "%.2f", totalAmount)
        totalAmountLabel.text = "$\(amountStr)"
    }
    
    @IBAction func fifteenPercentButtonTapped(_ sender: Any) {
        guard let billAmount = billAmountTextField.text, !billAmount.isEmpty else {return}
        let percentage = 15.0
        let amount = Double(billAmount)!
        let totalAmount = tipCalculation(billAmount: amount, percentage: percentage)
        let amountStr = String(format: "%.2f", totalAmount)
        totalAmountLabel.text = "$\(amountStr)"
    }
    
    @IBAction func twentyPercentButtonTapped(_ sender: Any) {
        guard let billAmount = billAmountTextField.text, !billAmount.isEmpty else {return}
        let percentage = 20.0
        let amount = Double(billAmount)!
        let totalAmount = tipCalculation(billAmount: amount, percentage: percentage)
        let amountStr = String(format: "%.2f", totalAmount)
        totalAmountLabel.text = "$\(amountStr)"
    }
    
    
    // Helper Methods
    
    func setupView() {
        self.view.backgroundColor = .background
        billAmountLabel.backgroundColor = .buttonBackground
        billAmountLabel.addCornerRadius()
        customTipLabel.backgroundColor = .buttonBackground
        customTipLabel.addCornerRadius()
        totalLabel.backgroundColor = .buttonBackground
        tenPercentButton.backgroundColor = .white
        tenPercentButton.addCornerRadius()
        fifteenPercentButton.backgroundColor = .white
        twentyPercentButton.backgroundColor = .white
        fifteenPercentButton.addCornerRadius()
        twentyPercentButton.addCornerRadius()
        submitButton.backgroundColor = .white
        submitButton.addCornerRadius()
      
    }
    
    func tipCalculation(billAmount: Double, percentage: Double) -> Double {
        let billAmount = billAmount
        let percentage = percentage / 100
        let tip = billAmount * percentage
        return billAmount + tip
    }

}
