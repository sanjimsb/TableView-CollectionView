//
//  Movie.swift
//  Table and Collection View
//
//  Created by Bipin Msb on 2022-03-19.
//

import Foundation

class Movie{
    var movieTitle: String
    var valid: Bool = false
    
    init(movieTitle: String) {
        self.movieTitle = movieTitle
    }
    
    init(movieTitle: String, valid: Bool) {
        self.movieTitle = movieTitle
        self.valid = valid
    }
}
