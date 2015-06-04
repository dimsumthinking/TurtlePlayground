import UIKit
import CoreGraphics


public class CosmicTurtle : TurtleView {
    


    // MARK: Initializers
    override init() {
        super.init()
        backgroundColor = UIColor.blackColor()
        turtleIconView = UIImageView(image: UIImage(named: "RedTurtle.png"))
        colors = [PenColor.Green]
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    // MARK: Draw Methods

    override func drawAvatar() {
        colorAvatar()
        super.drawAvatar()
    }
    
    func colorAvatar() {
        let turtleImage = UIImage(named:"RedTurtle.png")!
        let targetImage = CIImage(CGImage: turtleImage.CGImage)
        let angle = Float(colors.last!.hue * 2.0 * M_PI)
        
        let hueAdjuster = CIFilter(name: "CIHueAdjust", withInputParameters: [kCIInputImageKey : targetImage  ,
            kCIInputAngleKey : NSNumber(float: angle)])
        let resultImage = hueAdjuster.outputImage
        
        
        //let resultImage = colorControls.outputImage
        let finalImage = UIImage(CIImage: resultImage)
        turtleIconView.image = finalImage
    }
    
    

   
}