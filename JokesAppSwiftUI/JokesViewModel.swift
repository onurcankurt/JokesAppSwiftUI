//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by onur on 8.12.2023.
//

import Foundation

class JokesViewModel : ObservableObject { //Gozlemlenebilir yapmak icin observable
    
    @Published var jokes = [Value]()  //contentview'da degisikligi gorebilmek icin
    
    func getJokes(){
        
    }
    
}


//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
//https://api.chucknorris.io/jokes/random
