import UIKit
import CoreGraphics

public class CosmicTurtle : Turtle {
    private var paths = [UIBezierPath]()
    private var colors = [PenColor]()


    // MARK: Initializers
    override init() {
        super.init()
        backgroundColor = UIColor.blackColor()
        paths.append(path)
        turtleIconView = UIImageView(image: UIImage(named: "GreenTurtle.png"))
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
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
    override func drawPath() {
        UIColor.whiteColor().setStroke()
        path.stroke()
    }
    override func drawAvatar() {
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(headingInRadians))
        let centerOfTurtleX = path.currentPoint.x - turtleIconView.frame.size.width/2
        let centerOfTurtleY = path.currentPoint.y - turtleIconView.frame.size.height/2
        let moveTurtle = CGAffineTransformMakeTranslation(centerOfTurtleX, centerOfTurtleY)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        turtleIconView.transform = turtleTransform
        addSubview(turtleIconView)
    }
    
    
//    

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
   
}