public func forward() {
    turtle.forward(Double(standardForwardDistance))
}

public func back() {
    turtle.forward(Double(-standardForwardDistance))
}

public func right() {
    turtle.increaseHeadingBy(Double(rightAngle))
}
public func left() {
    turtle.increaseHeadingBy(Double(-rightAngle))
}

public func resetTarget() {
    turtle.resetTarget()
}