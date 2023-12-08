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
        
        NavigationView{
            
            List(jokesVM.jokes) { element in
                
                Text(element.joke)
                
            }
            
        }.navigationBarTitle(Text("Jokes App"))
    }
}

#Preview {
    ContentView()
}
