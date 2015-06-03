import UIKit

public enum PenColor: Int {

    case Red, Yellow
    case Magenta, Green, Cyan
    case Blue, Orange

    
    var color: UIColor {
        switch self {
        case Red:
            return UIColor.redColor()
        case Green:
            return UIColor.greenColor()
        case Blue:
            return UIColor.blueColor()
        case Yellow:
            return UIColor.yellowColor()
        case Cyan:
            return UIColor.cyanColor()
        case Orange:
            return UIColor.orangeColor()
        case Magenta:
            return UIColor.magentaColor()
        }
    }
    
    func next() -> PenColor {
        let numberOfNextColor = (rawValue + 1) % PenColor.Red.rawValue
        return PenColor(rawValue: numberOfNextColor)!
    }
}

