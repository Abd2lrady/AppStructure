//
//  SceneDelegate+Extension.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import IQKeyboardManagerSwift

extension SceneDelegate {
    func appBootstrap(scene: UIWindowScene) {
        IQKeyboardManager.shared.enable = true
        window = UIWindow(windowScene: scene)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
}
