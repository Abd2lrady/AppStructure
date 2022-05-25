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
    
    func showMessage(title: String?,
                     body: String?,
                     msgType: MsgView,
                     msgBtnAction: @escaping( () -> Void) )
    
    func hideMesssage()

}
