//
//  MovieGridDetailsViewController.swift
//  flixster
//
//  Created by Namita Mathew on 2/23/21.
//

import UIKit
import AlamofireImage


class MovieGridDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropGridView: UIImageView!
    @IBOutlet weak var posterGridView: UIImageView!
    @IBOutlet weak var titleGridLabel: UILabel!
    @IBOutlet weak var synopsisGridLabel: UILabel!
    

    
    
    var movie: [String: Any]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
        
        titleGridLabel.text = movie["title"] as? String
        titleGridLabel.sizeToFit()
        synopsisGridLabel.text = movie["overview"] as? String
        synopsisGridLabel.sizeToFit()
        
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterGridPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterGridPath)
        
        posterGridView.af.setImage(withURL: posterUrl!)
        
        let backdropGridPath = movie["backdrop_path"] as? String ?? "nil"
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropGridPath )
        
        backdropGridView.af.setImage(withURL: backdropUrl!)
        
        posterGridView.layer.borderWidth = 1.5
        posterGridView.layer.borderColor = UIColor.white.cgColor
        
        
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
