//
//  UIViewController+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension UIViewController {
    func setToast(message: String,
                  messageFont: UIFont,
                  messageColor: UIColor = .black,
                  background: UIColor = .white) {
        let label = UILabel()
        label.text = message
        label.font = messageFont
        label.textColor = messageColor
        label.backgroundColor = background
        label.textAlignment = .center
        label.setBorders()
        label.setCorners()
        label.alpha = 0
        let labelWidth = label.intrinsicContentSize.width + 20
        let labelHeight = label.intrinsicContentSize.height + 10

        label.frame = CGRect(x: self.view.center.x - (labelWidth / 2),
                             y: self.view.frame.maxY - (labelHeight * 2),
                             width: labelWidth,
                             height: labelWidth)
        
        self.view.addSubview(label)
        
        UIView.animate(withDuration: 1,
                       delay: 0,
                       options: .autoreverse) {
            label.alpha = 1
        } completion: {_ in
            label.removeFromSuperview()
        }
    }
    
    func hideNavigationBar() {
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.clipsToBounds = true
    }
}
