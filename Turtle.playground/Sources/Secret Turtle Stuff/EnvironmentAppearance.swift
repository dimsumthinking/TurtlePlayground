import UIKit
import CoreGraphics

let themeIsDark = true

let environmentColor = themeIsDark ? UIColor.blackColor() : UIColor.whiteColor()
let borderColor = UIColor.darkGrayColor()
let initialPathColor = themeIsDark ? PenColor.White : PenColor.Black
let arrowColor =  initialPathColor.color


let environmentFrame = CGRect(x:0, y: 0, width: 960, height: 540)
let minDimension = min(environmentFrame.width, environmentFrame.height)
let bezierOffset =  Double(minDimension) / 10.8 //5.4
let lineWidth = minDimension / 108
let arrowCoordinate = lineWidth * 2
let multiplier = Double(lineWidth) / 5 

