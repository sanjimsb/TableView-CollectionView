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
    
    // initializes the movieTitle variable
    init(movieTitle: String) {
        self.movieTitle = movieTitle
    }
    
    // initialized the variables movieTitle and valid
    init(movieTitle: String, valid: Bool) {
        self.movieTitle = movieTitle
        self.valid = valid
    }
}
