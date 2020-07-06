//
//  TipLabel.swift
//  TipCalc
//
//  Created by Connor Holland on 7/6/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

import UIKit

class TipLabel: UILabel {
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    func setupView() {
        self.backgroundColor = .buttonBackground
        self.addCornerRadius()
    }
}
