//
//  UIColor.swift
//  TwitterTutorial
//
//  Created by Edwy Lugo on 19/12/20.
//  Copyright © 2020 SDvirtua Marketing Digital. All rights reserved.
//

import UIKit

// MARK: - UIColor

extension UIColor {
    static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
        return UIColor(red: red/255, green: green/255, blue: blue/255, alpha: 1)
    }
    
    static let twitterBlue = UIColor.rgb(red: 29, green: 161, blue: 242)
    static let mainBlue = UIColor.rgb(red: 255, green: 255, blue: 255)
    
}

