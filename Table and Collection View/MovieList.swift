//
//  MovieList.swift
//  Table and Collection View
//
//  Created by Bipin Msb on 2022-03-19.
//

import Foundation

class MovieList {
    var movies: [String] = [
        "Eternals",
        "Dune",
        "No Time To Die",
        "Last Night in Soho",
        "Ron’s Done Wrong",
        "Halloween Kills",
        "Venom",
        "Antlers",
        "The Addams Family 2"
    ]
   
    
    func addMovie(movie: Movie){
        print(movie.movieTitle)
        movies.append(movie.movieTitle)
    }
    
    func deleteMovie(indexPath: IndexPath) {
        movies.remove(at: indexPath.row)
    }
}
