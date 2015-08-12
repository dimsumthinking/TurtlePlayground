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
let rightAngle = 90

let environmentColor = UIColor.blackColor()
let initialPenColor = PenColor.Green
let victoryColor = UIColor.lightGrayColor()
