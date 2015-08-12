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

public func resetTarget() {
    turtle.resetTarget()
}