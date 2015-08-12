import UIKit

struct Path {
    var bezierPath = UIBezierPath()
    var currentPoint: CGPoint {
        return bezierPath.currentPoint
    }
    
    // MARK: - Initializers
    
    init(startingPoint: CGPoint) {
        bezierPath.moveToPoint(startingPoint)
        bezierPath.lineWidth = lineWidth
    }
    
    private init(bezierPath: UIBezierPath) {
        self.bezierPath = bezierPath
    }
    
    // MARK: - Position
    
    func moveTo(x x:Double, y: Double) -> Path  {
        bezierPath.addLineToPoint(CGPoint(x: x, y: y))
        return Path(bezierPath: bezierPath)
    }
    
    func forward(distance: Double, inDirection headingInRadians: Double) -> Path {
        let dx = distance * cos(headingInRadians)
        let dy = distance * sin(headingInRadians)
        let currentX = Double(bezierPath.currentPoint.x)
        let currentY = Double(bezierPath.currentPoint.y)
        return moveTo(x: currentX + dx, y: currentY + dy)
    }
    
}

