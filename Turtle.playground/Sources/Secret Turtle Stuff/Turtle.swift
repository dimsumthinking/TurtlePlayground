import UIKit

public struct Turtle {
        
    private var currentPath: Path
    public let view: TurtleView
    private var avatar: Avatar
    private let turtleType: TurtleType
    
    // MARK: - Initializers
    
    public init(turtleType: TurtleType = .Plain) {
        self.turtleType = turtleType
        let terrariumFrame = CGRect(x: 0, y: 0, width: 600, height: 600)
        avatar = Avatar(imageName: turtleType.imageName, penColor: turtleType.penColor)
        view = TurtleView(frame: terrariumFrame, avatarView: avatar.view, backgroundColor: turtleType.backgroundColor)
        currentPath = Path(penColor: turtleType.penColor, isPenDown: true, startingPoint: CGPoint(x: view.center.x , y: view.center.y))
        view.addPath(currentPath)
        updateAvatar()
    }
    private init(currentPath: Path, view: TurtleView, avatar: Avatar, turtleType: TurtleType){
        self.currentPath = currentPath
        self.view = view
        self.avatar = avatar
        self.turtleType = turtleType
        updateAvatar()
    }
    
    // MARK: - Posiiton

    func forward(distance: Double)  {
        let path = currentPath.forward(distance, inDirection: avatar.headingInRadians)
        turtle = Turtle(currentPath: path, view: view, avatar: avatar, turtleType: turtleType)
    }
    
    func jumpTo(x x: Double, y: Double) {
        turtle = Turtle(currentPath: currentPath.jumpTo(x: x, y: y), view: view, avatar: avatar, turtleType: turtleType)
    }
    func home() {
        jumpTo(x: Double(view.center.x), y: Double(view.center.y))
    }

    // MARK: - Direction
    
    func increaseHeadingBy(degrees: Double) {
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar.increaseHeadingBy(degrees), turtleType: turtleType)

    }
    func setHeadingTo(direction: CompassDirection) {
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar.setHeadingTo(direction), turtleType: turtleType)
    }
    
    // MARK: - Visibility
    
    func show(isVisible: Bool){
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar.show(isVisible), turtleType: turtleType)
    }
    func penDown(isPenDown: Bool) {
        turtle = Turtle(currentPath: currentPath.penDown(isPenDown), view: view, avatar: avatar, turtleType: turtleType)

    }
    
    // MARK: - Colors
    
    func penColor(penColor: PenColor) {
        if turtleType != .Plain {
            let path =  Path(penColor: penColor, isPenDown: currentPath.isPenDown, startingPoint:currentPath.currentPoint , uniqueID: currentPath.uniqueID + 1)
            view.addPath(path)
            turtle = Turtle(currentPath: path, view: view, avatar: avatar.penColor(penColor), turtleType: turtleType)
        }
    }
    
    func nextColor() {
        penColor(currentPath.penColor.next())
    }
    
    // MARK: Utility
    
    private func updateAvatar() {
        view.updateAvatarTransform(avatar.positionTransform(currentPath.currentPoint))
    }
}

extension Turtle: CustomPlaygroundQuickLookable {
    public func customPlaygroundQuickLook() -> PlaygroundQuickLook {
        return PlaygroundQuickLook(reflecting: view)
    }

}





