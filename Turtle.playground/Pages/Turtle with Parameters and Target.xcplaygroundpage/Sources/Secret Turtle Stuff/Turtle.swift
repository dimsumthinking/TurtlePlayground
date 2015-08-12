import UIKit

public private(set) var turtle = Turtle()


public struct Turtle {
        
    private var currentPath: Path
    public let view: TurtleView
    private var avatar: Avatar
    private let target:  Target
    
    // MARK: - Initializers
    
    public init() {
        let terrariumFrame = CGRect(x: 0, y: 0, width: width, height: height)
        avatar = Avatar()
        view = TurtleView(frame: terrariumFrame, avatarView: avatar.view)
        currentPath = Path(startingPoint: CGPoint(x: centerX , y: centerY))
        target = Target()
        view.addPath(currentPath)
        view.addSubview(target.targetView)
        view.addSubview(target.startingMarkerView)
        updateAvatar()
    }
    private init(currentPath: Path, view: TurtleView, avatar: Avatar, target: Target){
        self.currentPath = currentPath
        self.view = view
        self.avatar = avatar
        self.target = target
        updateAvatar()
    }
    
    // MARK: - Position

    func forward(distance: Double)  {
        let path = currentPath.forward(distance, inDirection: avatar.headingInRadians)
        turtle = Turtle(currentPath: path, view: view, avatar: avatar, target: target)
        if target.containsPoint(path.currentPoint.x, y: path.currentPoint.y) {
            view.backgroundColor = victoryColor
        } else {
            view.backgroundColor = environmentColor
        }
        
    }
    

    // MARK: - Direction
    
    func increaseHeadingBy(degrees: Double) {
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar.increaseHeadingBy(degrees), target: target)

    }

    
    // MARK: Utility
    
    private func updateAvatar() {
        view.updateAvatarTransform(avatar.positionTransform(currentPath.currentPoint))
    }
    func resetTarget() {
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar, target: target.resetTarget())
    }
}

extension Turtle: CustomPlaygroundQuickLookable {
    public func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        
        return PlaygroundQuickLook(reflecting: view)
    }

}
