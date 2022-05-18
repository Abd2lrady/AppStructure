//
//  NSObject+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

extension NSObject {
    static var className: String {
        String(describing: self)
    }
}
