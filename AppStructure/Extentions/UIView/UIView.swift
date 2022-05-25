//
//  UIView+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension UIView {
    /**
        Creating corner radius for you view.
     
    - ex: view.setCorners(with: 5, corners [.layerMaxXMaxYCorner, .layerMaxXMinYCorner, .layerMinXMaxYCorner, .layerMinXMinYCorner])
     */
    func setCorners(with radius: CGFloat,
                    corners: CACornerMask) {
        
        self.layer.cornerRadius = radius
        self.layer.maskedCorners = corners
        self.clipsToBounds = true
        
    }
    
    /**
        Creating Borders for view.
     
      - ex: view.setBorders(with: 5, color:  .black)
     */
    func setBorders(with width: CGFloat,
                    color: UIColor) {
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
    }
    
    /**
        Creating Borders for view
     
     - ex: view.setShadow(radius: 5,color: .black, opacity: 0.5, offset: CGSize(width: 5, height: 5))
     */
    func setShadow(radius: CGFloat,
                   color: UIColor,
                   opacity: Float,
                   offset: CGSize) {
        
        self.layer.shadowRadius = radius
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = offset
    }
}
