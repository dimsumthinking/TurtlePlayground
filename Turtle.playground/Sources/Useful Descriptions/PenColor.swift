import UIKit

public enum PenColor: Int {
    case Red
    case Orange
    case Yellow
    case PeaGreen, Green, BlueGreen
    case Cyan, Cerullian, Blue
    case Purple, Magenta, Pink
    case Black

    
    var color: UIColor {
        switch self {
        case Black:
            return UIColor.blackColor()
        default:
            return UIColor(hue: CGFloat(hue), saturation: 1, brightness: 1, alpha: 1)
        }
    }
    
    func next() -> PenColor {
        let numberOfNextColor = (rawValue + 7) % PenColor.Pink.rawValue
        return PenColor(rawValue: numberOfNextColor)!
    }
    
    var hue: Double {
        return Double(rawValue)/12.0
    }
}

