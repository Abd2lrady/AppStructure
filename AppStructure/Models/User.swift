//
//  User.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

struct User: Codable {
    let userID: String
    let email: String
    let password: String
    let firstName: String?
    let lastName: String?
    
    enum CodingKeys: String, CodingKey {
        case userID = "user_id"
        case firstName = "first_name"
        case lastName = "last_name"
        case email, password

    }
    
}
