//
//  SceneDelegate+Extension.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import IQKeyboardManagerSwift

extension SceneDelegate {
    func setAppRootView(scene: UIWindowScene) {
        window = UIWindow(windowScene: scene)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
    
    func iqKeyboardConfig() {
        IQKeyboardManager.shared.enable = true
    }
}
