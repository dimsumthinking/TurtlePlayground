import UIKit

public enum TurtleType {
    case Plain
    case ColorsOnWhite
    case ColorsOnBlack
    
    var penColor: PenColor {
        switch self {
        case Plain:
            return PenColor.Black
        default:
            return PenColor.Green
        }
    }
    
    var imageName: String {
        switch self {
        case .Plain:
            return "Turtle.png"
        default:
            return "RedTurtle.png"
        }
    }
    
    var backgroundColor: UIColor {
        switch self {
        case Plain:
            return UIColor(red: 0.2, green: 1.0, blue: 1.0, alpha: 0.1)
        case ColorsOnWhite:
            return UIColor.whiteColor()
        case ColorsOnBlack:
            return UIColor.blackColor()
        }
    }
}