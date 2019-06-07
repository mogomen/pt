//
//  Settings.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/7/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import Foundation
import  UIKit

struct Categories {
    var imageCategory: UIImage
    var titleCategory: String
    
    static func fetchCategories() -> [Categories] {
        let icon1 = Categories(imageCategory: #imageLiteral(resourceName: "museum1"), titleCategory: "Museum")
        let icon2 = Categories(imageCategory: #imageLiteral(resourceName: "concert"), titleCategory: "Concert")
        let icon3 = Categories(imageCategory: #imageLiteral(resourceName: "disco-ball"), titleCategory: "Club")
        let icon4 = Categories(imageCategory: #imageLiteral(resourceName: "cocktail"), titleCategory: "Bar")
        let icon5 = Categories(imageCategory: #imageLiteral(resourceName: "cinema"), titleCategory: "Cinema")
        let icon6 = Categories(imageCategory: #imageLiteral(resourceName: "flame"), titleCategory: "Others")
    
    return [icon1, icon2, icon3, icon4, icon5, icon6]
    }
}

