//
//  MovieCell.swift
//  flixster
//
//  Created by Namita Mathew on 2/18/21.
//

import UIKit

class MovieCell: UITableViewCell {
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    @IBOutlet weak var posterView: UIImageView!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor.darkGray
        MovieCell.appearance().selectedBackgroundView = backgroundView
       

        // Configure the view for the selected state
    }

}
