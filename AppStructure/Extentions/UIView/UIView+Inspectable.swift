//
//  UIView+Inspectable.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension UIView {
    
    @IBInspectable var radius: CGFloat {
        get {
            return layer.cornerRadius
        } set {
            layer.cornerRadius = newValue
            layer.maskedCorners = [.layerMaxXMaxYCorner,
                                   .layerMinXMinYCorner,
                                   .layerMaxXMinYCorner,
                                   .layerMinXMaxYCorner]
            layer.masksToBounds = true
        }
    }
        
    @IBInspectable var borderWidth: CGFloat {
        get {
            return layer.borderWidth
        } set {
            layer.borderWidth = newValue
        }
    }
    
    @IBInspectable var borderColor: UIColor? {
        get {
            return UIColor(cgColor: layer.borderColor ?? UIColor.black.cgColor)
        } set {
            layer.borderColor = newValue?.cgColor
        }
    }
    
    @IBInspectable var shadowRadius: CGFloat {
        get {
            return layer.shadowRadius
        } set {
            layer.shadowRadius = newValue
        }
    }
    
    @IBInspectable var shadowColor: UIColor {
        get {
            return UIColor(cgColor: layer.shadowColor ?? UIColor.black.cgColor)
        } set {
            layer.shadowColor = newValue.cgColor
        }
    }
    
    @IBInspectable var shadowOpacity: Float {
        get {
            return layer.shadowOpacity
        } set {
            layer.shadowOpacity = newValue
        }
    }
    
    @IBInspectable var shadowOffest: CGSize {
        get {
            return layer.shadowOffset
        } set {
            layer.shadowOffset = newValue
        }
    }

}
