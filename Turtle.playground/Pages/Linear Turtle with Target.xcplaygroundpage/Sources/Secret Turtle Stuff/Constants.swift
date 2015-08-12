import UIKit

let centerX = 300
let centerY = 300
let width = 2 * centerX
let height = 2 * centerY
let terrarium = CGRect(x: 0, y: 0, width: width, height: height)

let lineWidth: CGFloat = 4.0

private let targetOffset = 25
let targetHorizontalOffset = targetOffset
let targetVerticalOffset = targetOffset
let targetSteps = 11

let targetWidth = 2 * targetHorizontalOffset
let targetHeight = 2 * targetVerticalOffset

let standardForwardDistance = 2 * targetOffset

let environmentColor = UIColor(red: 0.2,
    green: 1.0,
    blue: 1.0,
    alpha: 0.1)
let penColor = UIColor.blackColor()
let victoryColor = UIColor.yellowColor()
