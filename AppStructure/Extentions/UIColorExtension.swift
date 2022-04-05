//
//  UIColor+.swift
//  AppStructure
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension UIColor {
    /**
     Create color using hex code.
     
     - ex:
        - UIColor(hexCode: "#ff00ff")
     */
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var colorCodeString = hexCode
        
        if colorCodeString.contains("#") {
            colorCodeString.remove(at: colorCodeString.firstIndex(of: "#") ?? colorCodeString.startIndex)
        }
        
        var colorCode: UInt64 = 0
        
        if (colorCodeString.count != 6
            && !Scanner(string: colorCodeString).scanHexInt64(&colorCode)) {
            fatalError("error parsing color")
        }
        
        let red = CGFloat(((colorCode & 0xff0000) >> 16))
        let green = CGFloat(((colorCode & 0x00ff00) >> 8))
        let blue = CGFloat(colorCode & 0x0000ff)
        
        assert(red >= 0 && red <= 255, "red value is = \(red) out of range")
        assert(green >= 0 && green <= 255, "green value is = \(green) out of range")
        assert(blue >= 0 && blue <= 255, "blue value is = \(blue) out of range")
        assert(alpha >= 0 && alpha <= 1, "alpha value is = \(alpha) out of range")

        self.init(red: red / 255,
                  green: green / 255,
                  blue: blue / 255,
                  alpha: alpha)
    }
}
