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
        guard let url = URL(string: ApiConstants.baseURL)
        else { fatalError("wrong baseUrl") }
        return url
    }
    
    var path: String {
        return ApiConstants.path
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
