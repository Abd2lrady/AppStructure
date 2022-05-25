//
//  UIView+LoadingIndicator.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import NVActivityIndicatorView

extension UIView: LoadingIndicatorProtocol {
    
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
        self.addSubview(indicator)
        self.isUserInteractionEnabled = false
        indicator.startAnimating()
    }
    
    func hideIndicator() {
        var indicator: NVActivityIndicatorView?
        for  subView in subviews {
            if let view = subView as? NVActivityIndicatorView {
                indicator = view
                break
            }
        }
        self.isUserInteractionEnabled = true
        indicator?.stopAnimating()
        indicator?.removeFromSuperview()
    }
}
