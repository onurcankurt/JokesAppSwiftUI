//
//  JokesViewModel.swift
//  JokesAppSwiftUI
//
//  Created by onur on 8.12.2023.
//

import Foundation
import Alamofire

class JokesViewModel : ObservableObject { //Gozlemlenebilir yapmak icin observable
    
    @Published var jokes = [Value]()  //contentview'da degisikligi gorebilmek icin
    
    init(){
        getJokes()
    }
    
    func getJokes(count: Int = 6){
        
        AF.request("https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json", method: .get).responseDecodable(of: Welcome.self) { response in
            
            switch response.result {
                
            case.success(let data):
                let value = data.value
                self.jokes += value
                
            case.failure(let error):
                print(error)
            }
        }     
    }
    
}


//https://raw.githubusercontent.com/atilsamancioglu/JokesAppJsonData/main/chuck.json
//https://api.chucknorris.io/jokes/random
