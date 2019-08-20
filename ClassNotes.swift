//
//  ClassNotes.swift
//  got-class
//
//  Created by David Rifkin on 8/20/19.
//  Copyright © 2019 David Rifkin. All rights reserved.
//

import Foundation
/*
 Why: to learn how to code
 - to learn autolayout
 - how to transfer data between VControllers
 - how to use searchbar

 What did you learn from this project
🚙 vaguely, how to search through a matrix
 - ex: Series[Season[Episode, Episode],
                Season[Episode,Episode]]
 - to prepare for multiple segues given prototype cells
🚙 How many subclasses of UITableViewCell - 1
 - checking for nil in segues, downcasting, searchbar
 - how to read many errors!!
 - how to use Property Observers (ex: willSet or didSet)

 How: to do this
 - let's create a tableview in a view controller
 - create two prototype cells
 - populate the tableview with data (naive solution without filtering)
 - filter that data - search through a matrix
        -- mine: in vc - created vars for each filtered season
            -- prob would've done in model, didn't put in an array for the entire series
        -- static function in model that returns each individual season when you ask for them
            -- in VC, would check the episode.season value against the section + 1 value
        -- static var array of arrays [[GOTEpisode]] in model
 */
