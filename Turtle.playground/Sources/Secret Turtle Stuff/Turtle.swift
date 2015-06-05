import UIKit

public struct Turtle {
        
    private var currentPath: Path 
    public let view: TurtleView
    private let avatar: Avatar
    
    init(color: PenColor) {
        let terrariumFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
        view = TurtleView(frame: terrariumFrame)
        currentPath = Path(penColor: color, isPenDown: true, center: CGPoint(x: view.center.x , y: view.center.y))
        avatar = Avatar()
        view.addPath(currentPath)
    }

    mutating func forward(distance: Double) {
        currentPath = currentPath.forward(distance, inDirection: avatar.headingInRadians)
    }
    
    func increaseHeadingBy(degrees: Degrees) {
        avatar.increaseHeadingBy(degrees)
    }
    func setHeadingTo(direction: CompassDirection) {
        avatar.setHeadingTo(direction)
    }
    
    // MARK: Turtle and Pen Appearance
    func show(isVisible: Bool){
        avatar.show(isVisible)
    }
    mutating func penDown(isPenDown: Bool) {
        currentPath = currentPath.penDown(isPenDown)
    }
    mutating func jumpTo(#x: Double, y: Double) {
        currentPath = currentPath.jumpTo(x: x, y: y)
    }

    // MARK: Pen Color
    func penColor(penColor: PenColor) {
//        let currentPoint = path.currentPoint
//        path = UIBezierPath()
//        path.lineWidth = lineWidth
//        path.moveToPoint(currentPoint)
//        paths.append( path)
//        colors.append(penColor)
    }
//    
    func nextColor() {
//        let currentColor = colors.last!
//        if currentColor != .Black {
//            let nextColor = currentColor.next()
//            penColor(nextColor)
//        }
    }
    
    

}