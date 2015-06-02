import UIKit

turtle

let avatar = Avatar()

avatar.view

let myView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
myView.backgroundColor = UIColor.lightGrayColor()
myView.addSubview(avatar.viewAt(x: 250, y: 0, withHeadingInRadians: -0.0))


myView
