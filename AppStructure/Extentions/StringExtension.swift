//
//  String+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

extension String {
    var localized: String {
        return NSLocalizedString(self, comment: "")
    }
}
