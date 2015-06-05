import UIKit

class Avatar {
    private var view = UIImageView(image: UIImage(named: "Turtle.png"))
    private(set) var headingInRadians = 0.0
    private var isVisible = true
    
    func viewAt(currentPoint: CGPoint) -> UIImageView {
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(headingInRadians))
        let centerOfTurtleX = currentPoint.x - view.frame.size.width/2
        let centerOfTurtleY = currentPoint.y - view.frame.size.height/2
        let moveTurtle = CGAffineTransformMakeTranslation(centerOfTurtleX, centerOfTurtleY)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        view.transform = turtleTransform
        println(view.frame)
        
        return view
    }
    
    func increaseHeadingBy(degrees: Degrees) {
        headingInRadians += degrees.toRadians()
    }
    func setHeadingTo(direction: CompassDirection) {
        headingInRadians = direction.degrees().toRadians()
    }
    
    func show(isVisible: Bool){
        self.isVisible = isVisible
    }
}