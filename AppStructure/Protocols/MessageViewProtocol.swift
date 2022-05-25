//
//  MessageViewProtocol.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

protocol MessageViewProtocol {
    
    func showMessage(title: String?,
                     body: String?,
                     msgType: MsgView,
                     msgBtnAction: @escaping( () -> Void) )
    
    func hideMesssage()

}
