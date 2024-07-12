//
//  ExUIView.swift
//  e-commerce
//
//  Created by ALY NABIL on 16/03/2024.
//

import UIKit

extension UIView {
    
         // fixed layout values----------
//    func addLayer() {
//        self.layer.cornerRadius = 10
//        self.layer.shadowColor = UIColor.lightText.cgColor
//        self.layer.shadowOffset = CGSize(width: 2, height: 3)
//        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: 10)
//        self.layer.shadowPath = shadowPath.cgPath
//        self.layer.shadowOpacity = 0.5
//    }
    
        // after update
        // customize layout values----------
    func addLayer(cornerRadius: CGFloat = 10, shadowColor: UIColor = UIColor.lightGray, shadowOffsetWidth: CGFloat = 2, shadowOffsetHeight: CGFloat = 3, shadowOpacity:CGFloat = 0.5) {
        self.layer.cornerRadius = cornerRadius
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowOffset = CGSize(width: shadowOffsetWidth, height: shadowOffsetHeight)
        let shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: cornerRadius)
        self.layer.shadowPath = shadowPath.cgPath
        self.layer.shadowOpacity = Float(shadowOpacity)
    }
}
