import UIKit

struct Avatar {    
    
    static func viewAt(currentPoint: CGPoint, withHeadingInRadians radians: Double) -> UIImageView {
        var view = UIImageView(image: UIImage(named: "Turtle.png"))
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(radians))
        let centerOfTurtleX = currentPoint.x - view.frame.size.width/2
        let centerOfTurtleY = currentPoint.y - view.frame.size.height/2
        let moveTurtle = CGAffineTransformMakeTranslation(centerOfTurtleX, centerOfTurtleY)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        view.transform = turtleTransform
        return view
    }
    
}