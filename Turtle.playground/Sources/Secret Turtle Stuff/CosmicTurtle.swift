import UIKit
import CoreGraphics

public class CosmicTurtle : Turtle {
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
    override init() {
        //paths.append(path)
        super.init()
        backgroundColor = UIColor.blackColor()
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
//

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


}