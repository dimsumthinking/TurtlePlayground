import UIKit

struct Avatar {
    private var view = UIImageView(image: UIImage(named: "Turtle.png"))
    
    
    func viewAt(# x: CGFloat, y: CGFloat, withHeadingInRadians radians: Double) -> UIImageView {
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(radians))
        let moveTurtle = CGAffineTransformMakeTranslation(x - view.frame.size.width/2, y - view.frame.size.height/2)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        view.transform = turtleTransform
        println(view.frame)

        return view
    }
    
}