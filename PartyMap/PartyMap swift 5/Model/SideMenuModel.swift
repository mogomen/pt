//
//  SideMenuModek.swift
//  PartyMap swift 5
//
//  Created by Biscuit on 5/7/19.
//  Copyright © 2019 the Biscuits. All rights reserved.
//

import Foundation
import UIKit

enum SideMunuModel: Int, CustomStringConvertible, CaseIterable {
    
    case Profile
    case CreateEvent
    case Categories
    case Favorites
    case RateUs
    case Feedback
    case Settings
    case ReportError
    
    var description: String {
        switch self {
        case .Profile: return "Profile"
        case .CreateEvent: return "CreateEvent"
        case .Categories: return "Categories"
        case .Favorites: return "Favorites"
        case .RateUs: return "Rate Us"
        case .Feedback: return "Feedback"
        case .Settings: return "Settings"
        case .ReportError: return "ReportError"
        }
    }
    
    var image: UIImage {
        switch self {
        case .Profile: return UIImage(named: "Profile")  ?? UIImage()
        case .CreateEvent: return UIImage(named: "CreateEvent") ?? UIImage()
        case .Categories: return UIImage(named: "cocktail") ?? UIImage()
        case .Favorites: return UIImage(named: "Favorites") ?? UIImage()
        case .RateUs: return UIImage(named: "Rate Us") ?? UIImage()
        case .Feedback: return UIImage(named: "Feedback") ?? UIImage()
        case .Settings: return UIImage(named: "Settings") ?? UIImage()
        case .ReportError: return UIImage(named: "like") ?? UIImage()
        }
    }
}





