//
//  JokeViewModel.swift
//  JokesAppSwiftUI
//
//  Created by Bekir Geriş on 3.10.2023.
//

import Foundation
import Alamofire

class JokeViewModel : ObservableObject {
    
    @Published var jokeList = [JokeData]()
    
    init() {
        getJokes()
    }
    
    func getJokes() {
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json",
                   method: .get)
        .responseDecodable(of: JokeListData.self) { response in
            
            switch response.result {
            case .success(let data):
                let list = data.value
                self.jokeList += list
            case .failure(let error):
                print(error)
            }
        }
    }
}
