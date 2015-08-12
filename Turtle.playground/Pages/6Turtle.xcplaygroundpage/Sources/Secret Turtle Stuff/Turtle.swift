import UIKit

public private(set) var turtle = Turtle()


public struct Turtle {
        
    private var currentPath: Path
    public let view: TurtleView
    private var avatar: Avatar
    
    // MARK: - Initializers
    
    public init() {
        let terrariumFrame = CGRect(x: 0, y: 0, width: width, height: height)
        avatar = Avatar()
        view = TurtleView(frame: terrariumFrame, avatarView: avatar.view)
        currentPath = Path(startingPoint: CGPoint(x: centerX , y: centerY))
        view.addPath(currentPath)
        updateAvatar()
    }
    
    private init(currentPath: Path, view: TurtleView, avatar: Avatar){
        self.currentPath = currentPath
        self.view = view
        self.avatar = avatar
        updateAvatar()
    }
    
    // MARK: - Position

    func forward(distance: Double)  {
        let path = currentPath.forward(distance, inDirection: avatar.headingInRadians)
        turtle = Turtle(currentPath: path, view: view, avatar: avatar)
    }
    
    func moveTo(x x: Double, y: Double) {
        let path = currentPath.moveTo(x: x, y: y)
        turtle = Turtle(currentPath: path, view: view, avatar: avatar)
    }
    
    // MARK: - Colors
    
    func penColor(penColor: PenColor) {
        let path =  Path(startingPoint:currentPath.currentPoint, penColor: penColor )
            view.addPath(path)
            turtle = Turtle(currentPath: path, view: view, avatar: avatar.penColor(penColor))

    }
    func nextColor() {
        penColor(currentPath.penColor.next())
    }
    
    // MARK: - Direction
    
    func increaseHeadingBy(degrees: Double) {
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar.increaseHeadingBy(degrees))

    }
    func setHeadingTo(degrees: Double) {
        turtle = Turtle(currentPath: currentPath, view: view, avatar: avatar.setHeadingTo(degrees))
    }
    
    // MARK: - Appearance
    func hideTurtle(isHidden: Bool = true) {
        view.hideTurtle(isHidden)
    }
    
    func penDown(isDown: Bool = true) {
        turtle = Turtle(currentPath: currentPath.penDown(isDown), view: view, avatar: avatar)
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
