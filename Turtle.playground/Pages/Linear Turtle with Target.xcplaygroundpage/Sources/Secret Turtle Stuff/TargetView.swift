import UIKit
import XCPlayground
import GameKit

struct Target {
    static private let url = XCPlaygroundSharedDataDirectoryURL.URLByAppendingPathComponent("LinearTarget.plist")
    let targetView = UIImageView(image: UIImage(named: "Target.png"))
    let startingMarkerView = UIImageView(image: UIImage(named: "RightArrow.png"))
    let targetCoordinateX: Int
    let targetCoordinateY: Int
    
    init() {
        (targetCoordinateX, targetCoordinateY) = Target.readFromURL()
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
    

    
    static func readFromURL() -> (Int, Int) {
        guard let dictionary = NSDictionary(contentsOfURL: url), x = dictionary["x"] as? NSNumber, y = dictionary["y"] as? NSNumber else {
            Target.writeToURL(x: 8 * targetWidth, y: centerY)
            return (8 * targetWidth, centerY)
        }
        return (x.integerValue, y.integerValue)
        
    }
    
    static func writeToURL(x x: Int, y: Int) {
        let dictionary = ["x" : x, "y" : y] as NSDictionary
        dictionary.writeToURL(Target.url, atomically: true)
    }

    
    func resetTarget() -> Target {
        let source = GKARC4RandomSource()
        source.dropValuesWithCount(1000)
        let distribution = GKShuffledDistribution(lowestValue: 1, highestValue: 11)
        let x = distribution.nextInt() * targetWidth
        let y = centerY
        Target.writeToURL(x: x, y: y)
        return Target(targetCoordinateX: x, targetCoordinateY: y)
}
    
    
    
    
}
