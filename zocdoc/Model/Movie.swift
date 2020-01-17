//
//  Movie.swift
//  zocdoc
//
//  Created by User on 1/17/20.
//  Copyright © 2020 jonathanking. All rights reserved.
//

import UIKit

struct Movie: Decodable, Equatable {
    
    var id: Int?
    var rank: Int?
    var name: String?
    var duration: String?
    var description: String?
    var director: String?
    var genres: [String]?
    var actors: [String]?
    
    
}
