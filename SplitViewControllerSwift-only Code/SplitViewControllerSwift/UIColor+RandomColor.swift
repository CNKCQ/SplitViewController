//
//  UIColor+RandomColor.swift
//  Swiftk
//
//  Created by Jack on 16/4/17.
//  Copyright © 2016年 Jack. All rights reserved.
//

import UIKit

extension UIColor{
    class func randomColor() -> UIColor {
        return UIColor(red: randomNumber(), green: randomNumber(), blue: randomNumber(), alpha: 1.0)
    }
    
    class func randomNumber() -> CGFloat {
        return CGFloat(arc4random_uniform(256)) / CGFloat(255)
    }
}
