import UIKit

struct Avatar {
    private var view = UIImageView(image: UIImage(named: "Turtle.png"))
    
    
    func viewAt(currentPoint: CGPoint, withHeadingInRadians radians: Double) -> UIImageView {
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(radians))
        let centerOfTurtleX = currentPoint.x - view.frame.size.width/2
        let centerOfTurtleY = currentPoint.y - view.frame.size.height/2
        let moveTurtle = CGAffineTransformMakeTranslation(centerOfTurtleX, centerOfTurtleY)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        view.transform = turtleTransform
        println(view.frame)

        return view
    }
    
}