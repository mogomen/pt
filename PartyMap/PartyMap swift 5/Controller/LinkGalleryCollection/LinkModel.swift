//
//  LinkModel.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/4/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import Foundation
import UIKit

struct SushiModel {
    var mainImage: UIImage
    
    static func fetchSushi() -> [SushiModel] {
        let firstItem = SushiModel(mainImage: UIImage(named: "sushi1")!)
        let secondItem = SushiModel(mainImage: UIImage(named: "sushi2")!)
        let thirdItem = SushiModel(mainImage: UIImage(named: "sushi3")!)
        return [firstItem, secondItem, thirdItem]
    }
}

struct Constants {
    static let leftDistanceToView: CGFloat = 10
    static let rightDistanceToView: CGFloat = 10
    static let galleryMinimumLineSpacing: CGFloat = 10
    static let galleryItemWidth = (UIScreen.main.bounds.width - Constants.leftDistanceToView - Constants.rightDistanceToView - (Constants.galleryMinimumLineSpacing / 2)) / 2
}
