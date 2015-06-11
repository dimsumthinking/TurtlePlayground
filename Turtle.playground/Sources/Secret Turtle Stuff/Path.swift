import UIKit

struct Path {
    let penColor: PenColor
    var bezierPath = UIBezierPath()
    var isPenDown: Bool
    let uniqueID: Int
    var currentPoint: CGPoint {
        return bezierPath.currentPoint
    }
    
    // MARK: - Initializers
    
    init(penColor: PenColor, isPenDown: Bool, startingPoint: CGPoint, uniqueID: Int = 0) {
        self.penColor = penColor
        self.isPenDown = isPenDown
        self.uniqueID = uniqueID
        bezierPath.moveToPoint(startingPoint)
        bezierPath.lineWidth = 2
    }
    
    private init(bezierPath: UIBezierPath, penColor: PenColor, isPenDown: Bool, uniqueID: Int) {
        self.bezierPath = bezierPath
        self.penColor = penColor
        self.isPenDown = isPenDown
        self.uniqueID = uniqueID
    }
    
    // MARK: - Position
    
    func moveTo(x x:Double, y: Double) -> Path  {
        if isPenDown {
            bezierPath.addLineToPoint(CGPoint(x: x, y: y))
        } else {
            bezierPath.moveToPoint(CGPoint(x: x, y: y))
        }
        return Path(bezierPath: bezierPath, penColor: penColor, isPenDown: isPenDown, uniqueID: uniqueID)
    }
    
    func forward(distance: Double, inDirection headingInRadians: Double) -> Path {
        let dx = distance * cos(headingInRadians)
        let dy = distance * sin(headingInRadians)
        let currentX = Double(bezierPath.currentPoint.x)
        let currentY = Double(bezierPath.currentPoint.y)
        return moveTo(x: currentX + dx, y: currentY + dy)
    }
    
    func jumpTo(x x: Double, y: Double) -> Path {
        return penDown(false).moveTo(x: x, y: y).penDown(true)
    }

    // MARK: Visibility
    
    func penDown(isPenDown: Bool) -> Path  {
        return Path(bezierPath: bezierPath, penColor: penColor, isPenDown: isPenDown, uniqueID: uniqueID)
    }
}

