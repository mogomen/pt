//
//  Settings.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/7/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import Foundation
import UIKit

struct Categories {

    var imageCategory: UIImage?
    var titleCategory: String?

//    init(imageCategory: UIImage, titleCategory: String ) {
//        self.imageCategory = imageCategory
//        self.titleCategory = titleCategory
//    }
//    var categoriesList: [Categories] = []
//    func fetch() {
//        categoriesList = Categories.fetchCategories()
//    }

    static func fetchCategories() -> [Categories] {

        var image = UIImage(named: "sushi2")

        let icon1 = Categories(imageCategory: image!, titleCategory: "Museum")
        let icon2 = Categories(imageCategory: image!, titleCategory: "Concert")
        let icon3 = Categories(imageCategory: image!, titleCategory: "Club")
        let icon4 = Categories(imageCategory: image!, titleCategory: "Bar")
        let icon5 = Categories(imageCategory: image!, titleCategory: "Cinema")
        let icon6 = Categories(imageCategory: image!, titleCategory: "Others")

    return [icon1, icon2, icon3, icon4, icon5, icon6]
    }

}


   
    





