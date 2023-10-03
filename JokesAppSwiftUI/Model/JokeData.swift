//
//  JokeData.swift
//  JokesAppSwiftUI
//
//  Created by Bekir Geriş on 3.10.2023.
//

import Foundation

struct JokeData: Identifiable, Codable {
    let id: Int
    let joke: String
    let categories: [String]
}
