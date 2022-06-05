//
//  BaseVC.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import SwiftMessages
import NVActivityIndicatorView

class BaseViewController: UIViewController, BaseViewControllerProtocol {
    
}

// MARK: - BaseVC Extension for showing messages
extension BaseViewController {
    
    func showMessageWithAction(title: String?,
                               body: String?,
                               msgType: MsgView,
                               msgBtnAction: @escaping (() -> Void)) {
        
        let msgView = MessageView.viewFromNib(layout: .cardView)
        
        switch (msgType) {
        case .error:
            msgView.configureTheme(.error)
        case .warning:
            msgView.configureTheme(.warning)
        case .success:
            msgView.configureTheme(.success)
        case .info:
            msgView.configureTheme(.info)
        }
        
        msgView.configureContent(title: title,
                                 body: body,
                                 iconImage: nil,
                                 iconText: nil,
                                 buttonImage: .actions,
                                 buttonTitle: "Ok") { _ in
            msgBtnAction()
        }
        
        var config = SwiftMessages.Config()
        config.duration = .forever
        SwiftMessages.show(config: config, view: msgView)
        
    }
    
    func showMessage(msgType: MsgView,
                     body: String) {
        
        let msgView = MessageView.viewFromNib(layout: .cardView)
        msgView.button?.isHidden = true
        switch (msgType) {
        case .error:
            msgView.configureTheme(.error)
        case .warning:
            msgView.configureTheme(.warning)
        case .success:
            msgView.configureTheme(.success)
        case .info:
            msgView.configureTheme(.info)
        }
        msgView.configureContent(title: msgType.rawValue, body: body)
        
        var config = SwiftMessages.Config()
        config.duration = .automatic
        SwiftMessages.show(config: config, view: msgView)
        
    }
    
    func hideMesssage() {
        SwiftMessages.hide()
    }
}

// MARK: - BaseVC Extension for Loading Indicator
extension BaseViewController {
    
    func showLoadingIndicator(frame: CGRect) {
        view.showLoadingIndicator(frame: frame)
    }
    
    func hideLoadingIndicator() {
        view.hideLoadingIndicator()
    }
}
