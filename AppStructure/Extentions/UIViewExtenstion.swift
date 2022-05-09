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
}
