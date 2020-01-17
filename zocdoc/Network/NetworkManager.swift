//
//  NetworkManager.swift
//  zocdoc
//
//  Created by User on 1/17/20.
//  Copyright © 2020 jonathanking. All rights reserved.
//

import UIKit

class NetworkManager {
    
    var movie = [Movie]()
    
    func handleUrlRequest(with url: URL) -> URLRequest {
        
        var request = URLRequest(url: url)
        request.setValue("Token token=uDTZnGR4tFGLo1Pmizvi4Att", forHTTPHeaderField: "Authorization")
        request.httpMethod = "GET"
        return request
        
    }
    
    func fetchMovies(with url: URL) {
        
        URLSession.shared.dataTask(with: handleUrlRequest(with: url)) { (data, response, error) in
            
            guard let data = data, error == nil else { return }
            
            do {
                // Pull movies from API as decodable
                let movies = try JSONDecoder().decode([Movie].self, from: data)
                for movie in movies {
                    print(movie.description ?? "No description found")
                }
                
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
        
    }
    
}


