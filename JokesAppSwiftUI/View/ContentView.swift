//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by Bekir Geriş on 3.10.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokeViewModel = JokeViewModel()
    
    var body: some View {
        NavigationView {
            List(jokeViewModel.jokeList) { joke in
                Text(joke.joke)
            }
            .toolbar {
                Button(
                action: {
                    jokeViewModel.getJokes()
                }, 
                    label: {
                    Text("Refresh")
                })
            }
            .navigationTitle("Jokes App")
        }
    }
}

#Preview {
    ContentView()
}
