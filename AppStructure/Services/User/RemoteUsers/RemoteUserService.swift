//
//  RemoteUserService.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation

class RemoteUserService: UserGatewayProtocol {
    let networkManager = NetworkManager.shared
    
    func getUser(completion: @escaping ((Result<[User], NetworkError>) -> Void)) {
        networkManager.request(target: UserTarget.getUser) { result, _ in
            switch result {
            case .success(let data):
                do {
                    let response = try JSONDecoder().decode(APIResponse<[User]>.self,
                                                            from: data)
                    completion(.success(response.data ?? [User]()))
                } catch {
                    completion(.failure(.parseError))
                }
                
            case .failure:
                completion(.failure(.genaricError))
            }
            
        }
  
    }
}
