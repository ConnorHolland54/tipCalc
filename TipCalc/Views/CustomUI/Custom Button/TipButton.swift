//
//  TipButton.swift
//  TipCalc
//
//  Created by Connor Holland on 7/6/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

import UIKit

class TipButton: UIButton {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.setTitleColor(.mainText, for: .normal)
        self.backgroundColor = .buttonBackground
        self.addCornerRadius()
    }
    
    
}
