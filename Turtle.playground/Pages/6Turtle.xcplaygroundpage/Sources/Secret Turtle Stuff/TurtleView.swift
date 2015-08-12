import UIKit
import CoreGraphics


public class TurtleView: UIView {
    private var paths = [Path]()
    private var avatarView =  UIImageView()
    
    
    // MARK: Initializers
    init(frame: CGRect, avatarView: UIImageView) {
        super.init(frame: frame)
        self.avatarView = avatarView
        backgroundColor =  environmentColor
        addSubview(avatarView)
    }
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder:aDecoder)
    }
    
    // MARK: Draw Methods
    override  public func drawRect(rect: CGRect) { 
        for path in paths {
            path.penColor.color.setStroke()
            path.bezierPath.stroke()
        }
    }
    func addPath(path:Path) {
        paths.append(path)
    }
    func updateAvatarTransform(transform: CGAffineTransform) {
        avatarView.transform = transform
    }
    
    // MARK: Show or hide turtle
    
    func hideTurtle(isHidden: Bool = true) {
        avatarView.hidden = isHidden
    }
}