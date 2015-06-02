import UIKit

public struct Avatar {
    public var view = UIImageView(image: UIImage(named: "Turtle.png"))
    
    public init(){}
    
    public func viewAt(# x: Double, y: Double, withHeadingInRadians radians: Double) -> UIImageView {
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(radians))
        let moveTurtle = CGAffineTransformMakeTranslation(CGFloat(x) - view.frame.size.width/2, CGFloat(y) - view.frame.size.height/2)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        view.transform = turtleTransform
        println(view.frame)

        return view
    }
    
}