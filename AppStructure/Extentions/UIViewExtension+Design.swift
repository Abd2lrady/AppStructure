//
//  UIViewExtension+Design.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
extension UIView {
    /**
        Creating Rounded view
     
    - ex: view.setRounded()
     */
    func setRounded() {
        self.layer.cornerRadius = self.frame.height / 2
        self.clipsToBounds = true
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
    
    /**
        Creating view shaking effect
     
     - ex: view.setShake(duration: 0.5, repeatCount: 5, autoReverse: true, shakeOffset: 5)
     */
    func setShake(duration: CFTimeInterval,
                  repeatCount: Float,
                  autoReverse: Bool,
                  shakeOffset: CGFloat) {
        let shakeLayer = CABasicAnimation(keyPath: "position")
        shakeLayer.duration = duration
        shakeLayer.repeatCount = repeatCount
        shakeLayer.autoreverses = autoReverse
        shakeLayer.fromValue = NSValue(cgPoint: CGPoint(x: self.center.x - shakeOffset,
                                                        y: self.center.y))
        shakeLayer.toValue = NSValue(cgPoint: CGPoint(x: self.center.x + shakeOffset,
                                                      y: self.center.y))
        self.layer.add(shakeLayer, forKey: "position")
    }
}
