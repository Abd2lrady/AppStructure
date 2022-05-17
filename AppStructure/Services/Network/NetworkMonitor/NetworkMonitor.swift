//
//  NetworkMonitor.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady

import Foundation

class NetworkMonitor {
    
    static let shared = NetworkMonitor()
    private init() { }
    
    var isConnected: Bool {
        do {
            let reachability = try Reachability()
            let status = reachability.connection
            switch status {
            case.unavailable:
                return false
            case .cellular, .wifi:
                return true
            }
        } catch {
            fatalError("error with reachability");
            // return false
        }
    }
 
}
