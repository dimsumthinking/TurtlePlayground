import UIKit

struct Avatar {
    private(set) var view = UIImageView()
    private(set) var headingInRadians = 0.0
    private let image: UIImage
    
    // MARK: - Initializers
    
    init(){
        image = UIImage(named: "Turtle.png")!
        view = UIImageView(image: colorAvatar(initialPenColor))
    }
    
    private init(view: UIImageView, image: UIImage, headingInRadians: Double) {
        self.view = view
        self.headingInRadians = headingInRadians
        self.image = image
    }
    
    // MARK: - Direction
    
    func increaseHeadingBy(degrees: Double) -> Avatar {
        return Avatar(view: view, image: image, headingInRadians: headingInRadians + degrees/180 * M_PI )
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
    
    // MARK: - Color
    
    func penColor(penColor: PenColor) -> Avatar {
        view.image = colorAvatar(penColor)
        return Avatar(view: view, image: image, headingInRadians: headingInRadians)
    }
    
    private func colorAvatar(penColor: PenColor) -> UIImage {
        let angle = penColor.hue * M_PI * 2.0
        guard let inputImage = CIImage(image: image),
            let hueAdjuster = CIFilter(name: "CIHueAdjust", withInputParameters: [kCIInputImageKey : inputImage  ,
                kCIInputAngleKey : NSNumber(double: angle)])  else {
                    return image
        }
        return UIImage(CIImage: hueAdjuster.outputImage!)
    }
    
    
}