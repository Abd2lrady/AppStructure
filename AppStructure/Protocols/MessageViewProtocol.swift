//
//  MessageViewProtocol.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

enum MsgView: String {
    
    case success
    case info
    case warning
    case error
    
}

protocol MessageViewProtocol {
    
    func showMessageWithAction(title: String?,
                               body: String?,
                               msgType: MsgView,
                               msgBtnAction: @escaping( () -> Void) )
    
    func showMessage(msgType: MsgView,
                     body: String)
    
    func hideMesssage()

}
