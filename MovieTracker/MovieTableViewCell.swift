//
//  MovieTableViewCell.swift
//  MovieTracker
//
//  Created by Agha Ali on 16/5/20.
//  Copyright © 2020 Agha Ali. All rights reserved.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var photoImageView: UIImageView!
    @IBOutlet var ratingControl: RatingControl!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
