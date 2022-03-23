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
    
    // adds a movie to MovieList
    @IBAction func addMovieAction(_ sender: Any) {
        if !newMovieLabel.text!.isEmpty{
            let getMovieTitle = newMovieLabel.text!
            let movie = Movie(movieTitle: getMovieTitle)
            if (moviesList.addMovie(movie: movie)) {
                showToast(message : "Movie Added")
                newMovieLabel.text = ""
            } else {
                showToast(message : "Duplicate Movie")
            }
        }
    }
    
    // shows toast message
    func showToast(message : String) {

        let toastLabel = UILabel(frame: CGRect(x: self.view.frame.size.width/2 - 80, y: self.view.frame.size.height-100, width: 160, height: 35))
        toastLabel.backgroundColor = UIColor.black.withAlphaComponent(0.6)
        toastLabel.textColor = UIColor.white
        toastLabel.textAlignment = .center;
        toastLabel.text = message
        toastLabel.layer.cornerRadius = 10;
        toastLabel.clipsToBounds  =  true
        self.view.addSubview(toastLabel)
        UIView.animate(withDuration: 3.0, delay: 0.1, options: .curveEaseOut, animations: {
             toastLabel.alpha = 0.0
        }, completion: {(isCompleted) in
            toastLabel.removeFromSuperview()
        })
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
