//
//  RMService.swift
//  RickAndMorty2025
//
//  Created by Luka Šalipur on 7. 10. 2025..
//

import Foundation

/// Primary API Service object to get Rick and Morty data
final class RMService {
    /// Shared singleton instance
    static let shared = RMService()
    
    /// Privateized constructor
    private init() {}
    
    /// Send Rick and Morty API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
