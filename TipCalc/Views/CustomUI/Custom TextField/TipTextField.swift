//
//  TipTextField.swift
//  TipCalc
//
//  Created by Connor Holland on 7/6/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

import UIKit

class TipTextField: UITextField {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.addCornerRadius(radius: 10)
        self.addAccentBorder()
        self.textColor = .mainText
        self.backgroundColor = .buttonBackground
        self.layer.masksToBounds = true
    }
}
