//
//  AddMovieViewController.swift
//  Table and Collection View
//
//  Created by Bipin Msb on 2022-03-19.
//

import UIKit

class AddMovieViewController: UIViewController {
    
    @IBOutlet weak var newMovieLabel: UITextField!
    var moviesList: MovieList!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func addMovieAction(_ sender: Any) {
        if !newMovieLabel.text!.isEmpty{
            let getMovieTitle = newMovieLabel.text!
            let movie = Movie(movieTitle: getMovieTitle)
            moviesList.addMovie(movie: movie)
        }
    }
    
//    override func viewWillDisappear(_ animated: Bool) {
//        super.viewWillDisappear(animated)
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
