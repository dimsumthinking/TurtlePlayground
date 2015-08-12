import UIKit

struct Path {
    var bezierPath = UIBezierPath()
    var currentPoint: CGPoint {
        return bezierPath.currentPoint
    }
    let penColor: PenColor
    let isPenDown: Bool
    
    // MARK: - Initializers
    
    init(startingPoint: CGPoint, penColor: PenColor = initialPenColor) {
        bezierPath.moveToPoint(startingPoint)
        bezierPath.lineWidth = lineWidth
        self.penColor = penColor
        self.isPenDown = true
    }
    
    private init(bezierPath: UIBezierPath, penColor: PenColor, isPenDown: Bool) {
        self.bezierPath = bezierPath
        self.penColor = penColor
        self.isPenDown = isPenDown
    }
    
    // MARK: - Position
    
    func moveTo(x x:Double, y: Double) -> Path  {
        if isPenDown {
            bezierPath.addLineToPoint(CGPoint(x: x, y: y))
        } else {
            bezierPath.moveToPoint(CGPoint(x: x, y: y))
        }
        return Path(bezierPath: bezierPath, penColor: penColor, isPenDown: isPenDown)
    }
    
    func forward(distance: Double, inDirection headingInRadians: Double) -> Path {
        let dx = distance * cos(headingInRadians)
        let dy = distance * sin(headingInRadians)
        let currentX = Double(bezierPath.currentPoint.x)
        let currentY = Double(bezierPath.currentPoint.y)
        return moveTo(x: currentX + dx, y: currentY + dy)
    }
    
    // MARK: Visibility
    
    func penDown(isPenDown: Bool) -> Path  {
        return Path(bezierPath: bezierPath, penColor: penColor, isPenDown: isPenDown)
    }
    
}

