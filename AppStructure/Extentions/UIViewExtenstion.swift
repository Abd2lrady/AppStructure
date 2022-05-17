//
//  UIView+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import NVActivityIndicatorView

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
    
    func showIndicator() {
        let indicatorWidth = self.frame.width / 2
        let indicatorHeight = self.frame.height / 2

        let indicator = NVActivityIndicatorView(frame: CGRect(x: self.center.x - indicatorWidth / 2,
                                                              y: self.center.y - indicatorHeight / 2,
                                                              width: indicatorWidth,
                                                              height: indicatorHeight),
                                                type: .ballClipRotate,
                                                color: .black,
                                                padding: 0)
        indicator.tag = 555_555
        self.addSubview(indicator)
        self.isUserInteractionEnabled = false
        indicator.startAnimating()
    }
    
    func hideIndicator() {
        guard let indicator = self.viewWithTag(555_555) as? NVActivityIndicatorView
        else { return }
        self.isUserInteractionEnabled = true
        indicator.stopAnimating()
        indicator.removeFromSuperview()

    }
}
