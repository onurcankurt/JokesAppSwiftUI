//
//  ContentView.swift
//  JokesAppSwiftUI
//
//  Created by onur on 8.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var jokesVM = JokesViewModel() 
    
    var body: some View {
        
        NavigationStack{
            
            List(jokesVM.jokes) { element in
                
                Text(element.joke)
                
            }
            .toolbar {
                Button(action: addJoke, label: {
                    Text("Get New Joke")
                })
            }
            
            .navigationTitle("Jokes App")
            
        }
    }
    
    func addJoke(){
        jokesVM.getJokes(count: 1)
    }
}

#Preview {
    ContentView()
}
