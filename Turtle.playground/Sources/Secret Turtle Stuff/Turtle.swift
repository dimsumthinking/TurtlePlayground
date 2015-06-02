import UIKit
import CoreGraphics
//import QuartzCore

public class Turtle: UIView {
    private var showTurtle = true
    private var isPenDown = true
    private var path = UIBezierPath()
    private var headingInRadians: Radians = 0
    
    // MARK: Initializers
    init() {
        super.init(frame: CGRect(x: 0, y: 0, width: 600, height: 600))
        backgroundColor = UIColor(red: 0.2, green: 1.0, blue: 1.0, alpha: 0.25)
        path.moveToPoint(center)
        path.lineWidth = 2
    }
    required public init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    // MARK: Draw Method
    override  public func drawRect(rect: CGRect) {
        path.stroke()
        if showTurtle {
            addSubview(Avatar.viewAt(path.currentPoint, withHeadingInRadians: headingInRadians))
        }
    }
    
    // MARK: Turtle and Pen Appearance
    func show(turtleIsVisible: Bool){
        showTurtle = turtleIsVisible
    }
    func penDown(penIsDown: Bool) {
        self.isPenDown = penIsDown
    }
    
    // MARK: Turtle location
    private func moveTo(#x:Double, y: Double) {
        if isPenDown {
            path.addLineToPoint(CGPoint(x: x, y: y))
        } else {
            path.moveToPoint(CGPoint(x: x, y: y))
        }
    }
    func home() {
        let isPenDown = self.isPenDown
        self.isPenDown = false
        path.moveToPoint(center)
        self.isPenDown = isPenDown
    }
    func forward(distance: Double) {
        let dx = distance * cos(headingInRadians)
        let dy = distance * sin(headingInRadians)
        let currentX = Double(path.currentPoint.x)
        let currentY = Double(path.currentPoint.y)
        moveTo(x: currentX + dx, y: currentY + dy)
    }
    
    // MARK: Turtle Direction
    func increaseHeadingBy(degrees: Degrees) {
        headingInRadians += degrees.toRadians()
    }
    func setHeadingTo(direction: CompassDirection) {
        headingInRadians = direction.degrees().toRadians()
    }
}