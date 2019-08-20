//
//  EpisodeTableViewCell.swift
//  got-class
//
//  Created by David Rifkin on 8/20/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class EpisodeTableViewCell: UITableViewCell {

    @IBOutlet weak var episodeNameLabel: UILabel!
    @IBOutlet weak var episodeAndSeasonNumberLabel: UILabel!
    @IBOutlet weak var episodeImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
