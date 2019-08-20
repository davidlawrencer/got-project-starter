//
//  Episode.swift
//  got-class
//
//  Created by David Rifkin on 8/20/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation

class GOTEpisode {
    var airdate: String
    var id: Int
    var name: String
    private var number: Int
    var season: Int
    var runtime: Int
    var summary: String
    var mediumImageID: String
    var originalImageID: String
    
    init(airdate: String, id: Int, name: String, number: Int, season: Int, runtime: Int, summary: String, mediumImageID: String, originalImageID: String) {
        self.airdate = airdate
        self.id = id
        self.name = name
        self.number = number
        self.season = season
        self.runtime = runtime
        self.summary = summary
        self.mediumImageID = mediumImageID
        self.originalImageID = originalImageID
    }
    
    func getFormattedEpAndSeasonString() -> String {
        return "S:\(season) E:\(number)"
    }
}
