import UIKit

public enum PenColor: Int {

    case Red, Yellow
    case Magenta, Green, Cyan
    case Blue, Orange
    case Black,  White
    case Purple, Brown
    case LightGray, DarkGray, Gray
    case  Clear
    
    var color: UIColor {
        switch self {
        case Black:
            return UIColor.blackColor()
        case DarkGray:
            return UIColor.darkGrayColor()
        case LightGray:
            return UIColor.lightGrayColor()
        case Gray:
            return UIColor.grayColor()
        case White:
            return UIColor.whiteColor()
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
        case Purple:
            return UIColor.purpleColor()
        case Magenta:
            return UIColor.magentaColor()
        case Brown:
            return UIColor.brownColor()
        case Clear:
            return UIColor.clearColor()
        }
    }
    
    func next() -> PenColor {
        let numberOfNextColor = (rawValue + 1) % PenColor.Black.rawValue
        return PenColor(rawValue: numberOfNextColor)!
    }
}

