import UIKit
import CoreGraphics
import QuartzCore


public class SpiroTurtle: TurtleView {

//    
//    // MARK: Experimental Curving Stuff
//    
//    private func radialAngle() -> Radians {
//        return Double(atan2(path.currentPoint.y - center.y, path.currentPoint.x - center.x))
//    }
//    
//    private func curveTo(#x: Double, y: Double, withHeading radians: Radians) {
//        if penIsDown {
//            let currentX = Double(path.currentPoint.x)
//            let currentY = Double(path.currentPoint.y)
//            path.addCurveToPoint(CGPoint(x: x, y: y),
//                controlPoint1: CGPoint(x: currentX +  bezierOffset * cos(headingInRadians),
//                    y: currentY + bezierOffset * sin(headingInRadians)),
//                controlPoint2: CGPoint(x: x - bezierOffset * cos(radians),
//                    y: y - bezierOffset *  sin(radians)))
//        } else {
//            path.moveToPoint(CGPoint(x: x, y: y))
//        }
//        headingInRadians = radians
//    }
//    
//    private func halfLoop(endingRadius: Double, endingRadians: Radians, firstHalf: Bool) {
//        let direction = firstHalf ? endingRadians + 3 * M_PI / 2 : endingRadians + M_PI/2
//        let endx = Double(center.x) + endingRadius * cos(endingRadians)
//        let endy = Double(center.y) + endingRadius * sin(endingRadians)
//        curveTo(x: endx, y: endy, withHeading:  direction)
//    }
//    
//    func loopWithAngle(degrees: Degrees) {
//        let xDistance = path.currentPoint.x - center.x
//        let yDistance = path.currentPoint.y - center.y
//        let radiansForward = degrees.toRadians()
//        let magnitude = Double(sqrt(xDistance * xDistance + yDistance * yDistance))
//        headingInRadians = radialAngle() + M_PI / 2
//        halfLoop(magnitude * 0.15, endingRadians: radialAngle() + radiansForward/2, firstHalf: true)
//        halfLoop(magnitude, endingRadians: radialAngle() + radiansForward/2, firstHalf: false)
//    }
//    
//    public func curveTo(#x:Double, y: Double, degrees: Double) {
//        curveTo(x: x, y: y, withHeading: degrees.toRadians())
//    }
}