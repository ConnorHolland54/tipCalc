//
//  StyleGuide.swift
//  TipCalc
//
//  Created by Connor Holland on 7/6/20.
//  Copyright © 2020 Connor Holland. All rights reserved.
//

import UIKit

extension UIColor {
    static let background = UIColor(named: "background")!
    static let borderHighlight = UIColor(named: "borderHighlight")!
    static let mainText = UIColor(named: "mainText")!
    static let buttonBackground = UIColor(named: "buttonBackground")!
}

extension UIView {
    func addCornerRadius(radius: CGFloat = 4) {
        self.layer.cornerRadius = radius
    }
    func addAccentBorder(width: CGFloat = 1, color: UIColor = .borderHighlight) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
}
