import UIKit
import XCPlayground
import GameKit

struct Target {
    static private let path = (XCPSharedDataDirectoryPath as NSString).stringByAppendingPathComponent("Target.plist")
    let targetView = UIImageView(image: UIImage(named: "Target.png"))
    let startingMarkerView = UIImageView(image: UIImage(named: "RightArrow.png"))
    let targetCoordinateX: Int
    let targetCoordinateY: Int
    
    init() {
        (targetCoordinateX, targetCoordinateY) = Target.readFromFile()
        positionTargetAndStartingView()
    }
    private init(targetCoordinateX: Int, targetCoordinateY: Int) {
        self.targetCoordinateX = targetCoordinateX
        self.targetCoordinateY = targetCoordinateY
        positionTargetAndStartingView()
    }
    
    func positionTargetAndStartingView() {
        targetView.frame = CGRect(x: targetCoordinateX - targetHorizontalOffset, y: targetCoordinateY - targetVerticalOffset, width: targetWidth, height: targetHeight)
        startingMarkerView.frame = CGRect(x: centerX - targetHorizontalOffset, y: centerY - targetVerticalOffset, width: targetWidth, height: targetHeight)
    }
    
    func containsPoint(x: CGFloat, y: CGFloat) -> Bool {
        return abs(Int(x) - targetCoordinateX) < targetHorizontalOffset && abs(Int(y) - targetCoordinateY) < targetHorizontalOffset
    }
    

    
    static func readFromFile() -> (Int, Int) {
        guard let dictionary = NSDictionary(contentsOfFile: path), x = dictionary["x"] as? NSNumber, y = dictionary["y"] as? NSNumber else {
            Target.writeToFile(x: 8 * targetWidth, y: 3 * targetHeight)
            return (8 * targetWidth, 3 * targetHeight)
        }
        return (x.integerValue, y.integerValue)
        
    }
    
    static func writeToFile(x x: Int, y: Int) {
        let dictionary = ["x" : x, "y" : y] as NSDictionary
        dictionary.writeToFile(Target.path, atomically: true)
    }

    
    func resetTarget() -> Target {
        let source = GKARC4RandomSource()
        source.dropValuesWithCount(1000)
        let distribution = GKShuffledDistribution(lowestValue: 1, highestValue: 11)
        let x = distribution.nextInt() * targetWidth
        let y = distribution.nextInt() * targetHeight
        Target.writeToFile(x: x, y: y)
        return Target(targetCoordinateX: x, targetCoordinateY: y)
}
    
    
    
    
}
