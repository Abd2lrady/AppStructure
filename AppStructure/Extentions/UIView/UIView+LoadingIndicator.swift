//
//  UIView+LoadingIndicator.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import NVActivityIndicatorView

extension UIView: LoadingIndicatorProtocol {
    
    func showLoadingIndicator(frame: CGRect) {
        
        let indicator = NVActivityIndicatorView(frame: frame,
                                                type: .ballClipRotate,
                                                color: .black,
                                                padding: 0)
        indicator.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(indicator)
        self.isUserInteractionEnabled = false
        indicator.startAnimating()
    }
    
    func hideLoadingIndicator() {
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
