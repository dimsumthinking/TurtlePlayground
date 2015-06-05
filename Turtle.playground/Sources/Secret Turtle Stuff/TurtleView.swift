import UIKit
import CoreGraphics


public class TurtleView: UIView {
    private var showTurtle = true
    let lineWidth = CGFloat(4)
    private var paths = [Path]()
    
    // MARK: Initializers
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = //UIColor(red: 0, green: 0, blue: 0, alpha: 0.2)
            UIColor(red: 0.2, green: 1.0, blue: 1.0, alpha: 0.1)
    }
    required public init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    // MARK: Draw Methods
    override  public func drawRect(rect: CGRect) {
        drawPath()
        if showTurtle {
            drawAvatar()
        }
    }
    
    func drawPath() {
        for path in paths {
            path.penColor.color.setStroke()
            path.bezierPath.stroke()
        }
    }
    func drawAvatar() {
//        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(headingInRadians))
//        let centerOfTurtleX = path.currentPoint.x - turtleIconView.frame.size.width/2
//        let centerOfTurtleY = path.currentPoint.y - turtleIconView.frame.size.height/2
//        let moveTurtle = CGAffineTransformMakeTranslation(centerOfTurtleX, centerOfTurtleY)
//        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
//        turtleIconView.transform = turtleTransform
//        addSubview(turtleIconView)
    }
    
    func addPath(path:Path) {
        paths.append(path)
    }
//    func updatePath(path:Path) {
//        if paths.isEmpty {
//            addPath(path)
//        } else {
//            paths[paths.count - 1] = path
//        }
//        self.setNeedsDisplay()
//    }
    
    
}