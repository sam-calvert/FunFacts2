//
//  ColorWheel.swift
//  FunFacts2
//
//  Created by Samuel Calvert on 4/10/15.
//  Copyright (c) 2015 SprayMonet. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    let colorsArray = [
        UIColor(red: 90/225.0, green: 187/225.0, blue: 181/255.0, alpha: 1.0), //teal color
        UIColor(red: 222/225.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0), // yellow
        UIColor(red: 223/255.0, green: 86/255.0, blue: 94/255.0, alpha: 1.0),
        UIColor(red: 239/255.0, green: 130/255.0, blue: 100/255.0, alpha: 1.0),
        UIColor(red: 77/255.0, green: 75/255.0, blue: 82/255.0, alpha: 1.0),
        UIColor(red: 105/255.0, green: 94/255.0, blue: 133/255.0, alpha: 1.0),
        UIColor(red: 85/255.0, green: 176/255.0, blue: 112/255.0, alpha: 1.0)
    ]
    
    func randomColor() -> UIColor {
        var range = UInt32(colorsArray.count)
        var randomNumber = Int(arc4random_uniform(range))
        
        return colorsArray[randomNumber]

    }
    
}