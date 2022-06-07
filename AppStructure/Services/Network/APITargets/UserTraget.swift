//
//  UserTraget.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import Foundation
import Moya

enum UserTarget {
    case getUser
}

extension UserTarget: TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://mocki.io/v1")
        else { fatalError("wrong baseUrl") }
        return url
    }
    
    var path: String {
        return "2a9eeccd-290f-40db-802f-9afe4e937769"
    }
    
    var method: Moya.Method {
        switch self {
        case .getUser:
            return .get
        }
    }
    
    var task: Task {
        switch self {
        case .getUser:
            return .requestPlain
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
    
}
