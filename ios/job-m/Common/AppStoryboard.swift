//
//  AppStoryboard.swift
//  job-m
//
//  Created by Martin Llaneza on 12/9/18.
//  Copyright © 2018 edsaio. All rights reserved.
//

import UIKit

enum AppStoryboard : String {
    
    case Main, Login, Jobs
    
    var instance : UIStoryboard {
        return UIStoryboard(name: self.rawValue, bundle: nil)
    }
    
}
