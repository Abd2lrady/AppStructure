//
//  BaseVC.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit
import SwiftMessages
import NVActivityIndicatorView

class BaseVC: UIViewController, BaseVCProtocol {
    
    var msgView: MessageView?
    
}

// MARK: - BaseVC Extension for showing messages
extension BaseVC {
    
    func showMessage(title: String?,
                     body: String?,
                     msgType: MsgView,
                     msgBtnAction: @escaping (() -> Void)) {
        
        msgView = MessageView.viewFromNib(layout: .cardView)
        
        switch (msgType) {
        case .error:
            msgView?.configureTheme(.error)
        case .warning:
            msgView?.configureTheme(.warning)
        case .success:
            msgView?.configureTheme(.success)
        case .info:
            msgView?.configureTheme(.info)
        }
        
        msgView?.configureContent(title: title,
                                  body: body,
                                  iconImage: nil,
                                  iconText: nil,
                                  buttonImage: .actions,
                                  buttonTitle: "Ok") { _ in
            msgBtnAction()
        }
        
        var config = SwiftMessages.Config()
        config.duration = .forever
        SwiftMessages.show(config: config, view: msgView ?? UIView())
        
    }
    
    func showAutomaticMessage(msgType: MsgView,
                              body: String) {
        
        msgView = MessageView.viewFromNib(layout: .cardView)
        msgView?.button?.isHidden = true
        switch (msgType) {
        case .error:
            msgView?.configureTheme(.error)
        case .warning:
            msgView?.configureTheme(.warning)
        case .success:
            msgView?.configureTheme(.success)
        case .info:
            msgView?.configureTheme(.info)
        }
        msgView?.configureContent(title: msgType.rawValue, body: body)
        
        var config = SwiftMessages.Config()
        config.duration = .automatic
        SwiftMessages.show(config: config, view: msgView ?? UIView())
        
    }
    
    func hideMesssage() {
        SwiftMessages.hide(id: msgView?.id ?? "")
    }
}

// MARK: - BaseVC Extension for Loading Indicator
extension BaseVC {
    
    func showIndicator() {
        view.showIndicator()
    }
    
    func hideIndicator() {
        view.hideIndicator()
    }
}
