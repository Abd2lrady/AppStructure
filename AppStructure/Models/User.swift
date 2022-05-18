//
//  User.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

struct User: Codable {
    let id: String
    let email: String
    let password: String
    let firstName: String?
    let lastName: String?
    
    enum CodingKeys: String, CodingKey {
        case id, email, password, firstName, lastName
    }
    
}
