//
//  UIViewController+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension UIViewController {
    
    func embedViewController(childVC: UIViewController) {
        self.addChild(childVC)
        view.addSubview(childVC.view)
        childVC.didMove(toParent: self)
    }
    
    func unembedViewController(childVC: UIViewController) {
        guard self.children.contains(childVC) else { return }
        childVC.willMove(toParent: nil)
        self.view.removeFromSuperview()
        self.removeFromParent()
    }
}
