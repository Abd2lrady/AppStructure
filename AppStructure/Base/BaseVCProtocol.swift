//
//  BaseVC.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import NVActivityIndicatorView
import SwiftMessages

protocol BaseVCProtocol {
    func showMessage(title: String?,
                     body: String?,
                     btnAction: @escaping( () -> Void) )
    func showIndicator()
    func hideIndicator()
}

extension BaseVCProtocol where Self: UIViewController {
    func showMessage(title: String?,
                     body: String?,
                     btnAction: @escaping( () -> Void) ) {
        let view = MessageView.viewFromNib(layout: .cardView)
        view.configureTheme(.success)
        view.configureContent(title: title,
                              body: body,
                              iconImage: nil,
                              iconText: nil,
                              buttonImage: .checkmark,
                              buttonTitle: "Ok") { _ in
            btnAction()
        }
        
        var config = SwiftMessages.Config()
        config.duration = .forever
        SwiftMessages.show(config: config, view: view)
    }
    
    func showIndicator() {
        view.showIndicator()
    }
    
    func hideIndicator() {
        view.hideIndicator()
    }
}
