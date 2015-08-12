import UIKit

struct Avatar {
    private(set) var view = UIImageView()
    private(set) var headingInRadians = 0.0
    private let image: UIImage
    
    // MARK: - Initializers
    
    init(){
        image = UIImage(named: "Turtle.png")!
        view = UIImageView(image: image)
    }
    
    private init(view: UIImageView, image: UIImage, headingInRadians: Double) {
        self.view = view
        self.headingInRadians = headingInRadians
        self.image = image
    }
    
    
    // MARK: - Position
    
    func positionTransform(currentPoint: CGPoint) -> CGAffineTransform {
        let rotateByRadians = CGAffineTransformMakeRotation(CGFloat(headingInRadians))
        let centerOfTurtleX = currentPoint.x  - view.center.x
        let centerOfTurtleY = currentPoint.y - view.center.y
        let moveTurtle = CGAffineTransformMakeTranslation(centerOfTurtleX, centerOfTurtleY)
        let turtleTransform =  CGAffineTransformConcat(rotateByRadians, moveTurtle)
        return turtleTransform
    }
    
    
}