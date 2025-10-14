//
//  RMGetAllCharactersResponse.swift
//  RickAndMorty2025
//
//  Created by Luka Šalipur on 8. 10. 2025..
//

import Foundation


struct RMGetAllCharactersResponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}

