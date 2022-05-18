//
//  UIViewExtenstion+NIB.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady 
//

import Foundation
import UIKit

extension UIView {
    @discardableResult
    func loadNib() -> UIView? {
        let nib = UINib(nibName: Self.className, bundle: .main)
        let nibViews = nib.instantiate(withOwner: self)
        guard let view = nibViews[0] as? UIView
        else { fatalError("can`t load view from nib \(Self.className)") }
        
        self.addSubview(view)
        self.clipsToBounds = true
        
        return view
    }
}
