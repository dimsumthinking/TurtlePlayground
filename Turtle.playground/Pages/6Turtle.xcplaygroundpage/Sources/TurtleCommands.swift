public func forward(distance: Double = standardForwardDistance) {
    turtle.forward(distance)
}

public func back(distance: Double = standardForwardDistance) {
    forward(-distance)
}

public func moveTo(x x: Double, y: Double) {
    turtle.moveTo(x: x, y: y)
}

public func right(angle: Double = rightAngle) {
    turtle.increaseHeadingBy(angle)
}
public func left(angle: Double = rightAngle) {
    right(angle)
}
public func setHeadingTo(degrees: Double) {
    turtle.setHeadingTo(degrees)
}
public func home() {
    penUp()
    moveTo(x: Double(centerX), y: Double(centerY))
    setHeadingTo(0)
    penDown()
}

public func penColor(penColor:PenColor){
    turtle.penColor(penColor)
}

public func nextColor() {
    turtle.nextColor()
}

public func penDown() {
    turtle.penDown()
}
public func penUp() {
    turtle.penDown(false)
}


public func hide() {
    turtle.hideTurtle()
}
public func show() {
    turtle.hideTurtle(false)
}
