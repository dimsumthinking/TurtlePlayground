public func forward(distance: Int = standardForwardDistance) {
    turtle.forward(Double(distance))
}

public func back(distance: Int = standardForwardDistance) {
    turtle.forward(Double(-distance))
}

public func right(angle: Int = rightAngle) {
    turtle.increaseHeadingBy(Double(angle))
}
public func left(angle: Int = rightAngle) {
    turtle.increaseHeadingBy(Double(-angle))
}

public func penColor(penColor:PenColor){
    turtle.penColor(penColor)
}

public func nextColor() {
    turtle.nextColor()
}

public func resetTarget() {
    turtle.resetTarget()
}