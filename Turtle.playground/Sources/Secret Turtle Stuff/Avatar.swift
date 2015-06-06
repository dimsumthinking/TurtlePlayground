import UIKit

struct Avatar {
    private(set) var view = UIImageView()
    private(set) var headingInRadians = 0.0
    private var isVisible = true
    private let image: UIImage
    
    // MARK: - Initializers
    
    init(imageName: String, penColor: PenColor){
        image = UIImage(named: imageName)!
        view = UIImageView(image: colorAvatar(penColor))
    }
    
    private init(view: UIImageView, image: UIImage, headingInRadians: Double, isVisible: Bool) {
        self.view = view
        self.headingInRadians = headingInRadians
        self.isVisible = isVisible
        self.image = image
    }
    
    // MARK: - Direction
    
    func increaseHeadingBy(degrees: Degrees) -> Avatar {
        return Avatar(view: view, image: image, headingInRadians: headingInRadians + degrees.toRadians(), isVisible: isVisible)
    }
    func setHeadingTo(direction: CompassDirection) -> Avatar {
        return Avatar(view: view, image: image, headingInRadians: direction.degrees().toRadians(), isVisible: isVisible)
    }
    
    // MARK: - Visibility
    
    func show(isVisible: Bool) -> Avatar { 
        view.hidden = !isVisible
        return Avatar(view: view, image: image,headingInRadians: headingInRadians, isVisible: isVisible)
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
        return Avatar(view: view, image: image, headingInRadians: headingInRadians, isVisible: isVisible)
    }
    
    private func colorAvatar(penColor: PenColor) -> UIImage {
        let inputImage = CIImage(image: image)
        let angle = penColor.hue * M_PI * 2.0
        let hueAdjuster = CIFilter(name: "CIHueAdjust", withInputParameters: [kCIInputImageKey : inputImage  ,
            kCIInputAngleKey : NSNumber(double: angle)])
        let resultImage = hueAdjuster.outputImage
        return UIImage(CIImage: resultImage)!
    }
    
}