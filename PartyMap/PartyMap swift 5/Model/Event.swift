//
//  Event.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 6/14/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import Foundation
import UIKit

class EventMenu {
    
    var imageEvent: UIImage?
    var namePlace: String?
    var categoryPlace: String?
    var date: Date?
    var adress: String?
    var textDescription: String?
    // var links: ??
    // var imageAlbum ??
    
    init(imageEvent: UIImage?,namePlace: String?, categoryPlace: String?,date: Date?,adress: String?,textDescription: String?) {
        self.imageEvent = imageEvent
        self.namePlace = namePlace
        self.categoryPlace = categoryPlace
        self.date = date
        self.adress = adress
        self.textDescription = textDescription
    }
}
