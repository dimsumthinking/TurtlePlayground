import UIKit
import CoreGraphics
import QuartzCore


public class SpiroTurtle: TurtleView {
//    private var showTurtle = true
//    private var penIsDown = true
//
//    private var path = UIBezierPath()
//    private var paths = [UIBezierPath]()
//   
//    private var colors = [initialPathColor]
//    private var headingInRadians: Radians = 0
//    
//    // MARK: Initializers
//    
//    init() {
//        super.init(frame: environmentFrame)
//        backgroundColor = environmentColor
//        paths.append(path)
//        path.moveToPoint(center)
//        path.lineWidth = lineWidth
//        layer.borderColor = borderColor.CGColor
//        layer.borderWidth = 4
//    }
//    
//
//    required public init(coder aDecoder: NSCoder) {
//        super.init(coder:aDecoder)
//    }
//    
//    // MARK: Draw Methods
//    
//    override  public func drawRect(rect: CGRect) {
//        strokePath()
//        if showTurtle {
//            addSubview(Avatar().viewAt(x: path.currentPoint.x, y: path.currentPoint.y, withHeadingInRadians: headingInRadians))
//        }
//    }
//    
//    private func strokePath() {
//        for (index, path) in enumerate(paths) {
//            colors[index].color.setStroke()
//            path.stroke()
//        }
//    }
//    
//    
//    
//    // MARK: Utility Method
//    
//    private func moveTo(#x:Double, y: Double) {
//        if penIsDown {
//            path.addLineToPoint(CGPoint(x: x, y: y))
//        } else {
//            path.moveToPoint(CGPoint(x: x, y: y))
//        }
//    }
//    
//    // MARK: Turtle's Internal API
//    
//    func show(turtleIsVisible: Bool){
//        showTurtle = turtleIsVisible
//    }
//    
//    func penDown(penIsDown: Bool) {
//        self.penIsDown = penIsDown
//    }
//    
//    func penColor(penColor: PenColor) {
//        let currentPoint = path.currentPoint
//        path = UIBezierPath()
//        path.lineWidth = lineWidth
//        path.moveToPoint(currentPoint)
//        paths.append( path)
//        colors.append(penColor)
//    }
//    
//    func nextColor() {
//        let currentColor = colors.last!
//        let nextColor = currentColor.next()
//        penColor(nextColor)
//    }
//
//    func home() {
//        let penIsDown = self.penIsDown
//        self.penIsDown = false
//        path.moveToPoint(center)
//        self.penIsDown = penIsDown
//    }
//    
//    func clear() {
//        colors = [colors.last!]
//        path = UIBezierPath()
//        path.lineWidth = lineWidth
//        paths = [path]
//        headingInRadians = 0
//        home()
//    }
//    
//    func forward(distance: Double) {
//        let dx = distance * cos(headingInRadians) * multiplier
//        let dy = distance * sin(headingInRadians) * multiplier
//        let currentX = Double(path.currentPoint.x)
//        let currentY = Double(path.currentPoint.y)
//        moveTo(x: currentX + dx, y: currentY + dy)
//    }
//    
//    func increaseHeadingBy(degrees: Degrees) {
//        headingInRadians += degrees.toRadians()
//    }
//    func setHeadingTo(direction: CompassDirection) {
//        headingInRadians = direction.degrees().toRadians()
//    }
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