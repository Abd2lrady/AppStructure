//
//  UserGateway.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

protocol UserGatewayProtocol {
    func getUser(completion:@escaping ((Result<[User], NetworkError>) -> Void))
}
