//
//  ViewController.swift
//  got-class
//
//  Created by David Rifkin on 8/20/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import UIKit

class EpisodeListViewController: UIViewController {

    var gotSeries = Series()
    @IBOutlet weak var episodeTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        episodeTableView.delegate = self
        episodeTableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}

extension EpisodeListViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return gotSeries.seasons.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Season \(section + 1)"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return gotSeries.seasons[section].episodes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //leftSideImageCell only
        if let cell = episodeTableView.dequeueReusableCell(withIdentifier: "leftSideImageCell") as? EpisodeTableViewCell {
            cell.episodeNameLabel.text = gotSeries.seasons[indexPath.section].episodes[indexPath.row].name
            cell.episodeAndSeasonNumberLabel.text = gotSeries.seasons[indexPath.section].episodes[indexPath.row].getFormattedEpAndSeasonString()
            return cell
        }
        return UITableViewCell()
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 160
    }
    
}

