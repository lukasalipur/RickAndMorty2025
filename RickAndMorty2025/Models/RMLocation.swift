//
//  RMLocation.swift
//  RickAndMorty2025
//
//  Created by Luka Šalipur on 7. 10. 2025..
//

import Foundation

struct RMLocation: Codable {
   let id: Int
   let name: String
   let type: String
   let dimension: String
   let residents: [String]
   let url: String
   let created: String
}
