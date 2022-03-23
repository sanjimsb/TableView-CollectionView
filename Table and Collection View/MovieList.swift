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
   
    //Adds movie to the movies list
    func addMovie(movie: Movie) -> Bool  {
        if (!movies.contains(movie.movieTitle)) {
            movies.append(movie.movieTitle)
            return true
        }
        
        return false
    }
    
    // deletes a movie from the list
    func deleteMovie(indexPath: IndexPath) {
        movies.remove(at: indexPath.row)
    }
    
    // movese movie from the provides index path i.e. current index to the new index path that is
    // provided
    func moveMovie(fromIndexPath: IndexPath, toIndexPath: IndexPath) {
        let temp = movies[fromIndexPath.row]
        deleteMovie(indexPath: fromIndexPath)
        movies.insert(temp, at: toIndexPath.row)
    }
}
