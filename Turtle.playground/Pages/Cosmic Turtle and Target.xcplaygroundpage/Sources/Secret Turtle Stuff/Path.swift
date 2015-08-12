import UIKit

struct Path {
    var bezierPath = UIBezierPath()
    var currentPoint: CGPoint {
        return bezierPath.currentPoint
    }
    let penColor: PenColor
    
    // MARK: - Initializers
    
    init(startingPoint: CGPoint, penColor: PenColor = initialPenColor) {
        bezierPath.moveToPoint(startingPoint)
        bezierPath.lineWidth = lineWidth
        self.penColor = penColor 
    }
    
    private init(bezierPath: UIBezierPath, penColor: PenColor) {
        self.bezierPath = bezierPath
        self.penColor = penColor
    }
    
    // MARK: - Position
    
    func moveTo(x x:Double, y: Double) -> Path  {
        bezierPath.addLineToPoint(CGPoint(x: x, y: y))
        return Path(bezierPath: bezierPath, penColor: penColor)
    }
    
    func forward(distance: Double, inDirection headingInRadians: Double) -> Path {
        let dx = distance * cos(headingInRadians)
        let dy = distance * sin(headingInRadians)
        let currentX = Double(bezierPath.currentPoint.x)
        let currentY = Double(bezierPath.currentPoint.y)
        return moveTo(x: currentX + dx, y: currentY + dy)
    }
    
}

