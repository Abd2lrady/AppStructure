//
//  SceneDelegate+Extension.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension SceneDelegate {
    func appBootstrap(scene: UIWindowScene) {
        
        window = UIWindow(windowScene: scene)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }
}
