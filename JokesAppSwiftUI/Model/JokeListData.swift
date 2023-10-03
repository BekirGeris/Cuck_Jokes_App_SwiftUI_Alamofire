//
//  JokeListData.swift
//  JokesAppSwiftUI
//
//  Created by Bekir Geriş on 3.10.2023.
//

import Foundation

struct JokeListData: Identifiable, Codable {
    let id = UUID()
    let type: String
    let value: [JokeData]
}
