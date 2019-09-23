//
//  MovieDetailsViewController.swift
//  Flixpart1
//
//  Created by Luis Alva on 9/22/19.
//  Copyright © 2019 Luis Alva. All rights reserved.
//

import UIKit
import AlamofireImage
class MovieDetailsViewController: UIViewController {
    
    
    @IBOutlet weak var backdrop: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    @IBOutlet weak var movieTitles: UILabel!
    @IBOutlet weak var movieSynapse: UILabel!
    var movie: [String:Any]!

    override func viewDidLoad() {
        super.viewDidLoad()
        movieTitles.text = movie["title"] as? String
        movieTitles.sizeToFit()
        movieSynapse.text = movie["overview"] as? String
        
        let baseURL = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseURL + posterPath)
        posterImage!.af_setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
        backdrop!.af_setImage(withURL: backdropUrl!)
        
        
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
