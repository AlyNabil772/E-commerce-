//
//  CardViewLayout.swift
//  e-commerce
//
//  Created by ALY NABIL on 02/04/2024.
//

import UIKit

class CardViewLayout: UIView {
    
       // layout class 
    
    @IBInspectable var cornerRedius: CGFloat = 8
    @IBInspectable var shadowOffsetWidth: CGFloat = 2
    @IBInspectable var shadowOffsetHeigth: CGFloat = 3
    @IBInspectable var shadowOpecity: CGFloat = 0.5
    @IBInspectable var boarderWidth: CGFloat = 0
    @IBInspectable var boarderColor: UIColor?
    @IBInspectable var shadowColor: UIColor = .gray
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRedius
        layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeigth)
        layer.shadowOpacity = Float(shadowOpecity)
        layer.borderWidth = boarderWidth
        layer.borderColor = boarderColor?.cgColor
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRedius)
        layer.shadowPath = shadowPath.cgPath
        
    }
}
