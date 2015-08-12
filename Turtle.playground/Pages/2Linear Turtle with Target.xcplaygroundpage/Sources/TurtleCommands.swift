public func forward() {
    turtle.forward(Double(standardForwardDistance))
}

public func back() {
    turtle.forward(Double(-standardForwardDistance))
}

public func resetTarget() {
    turtle.resetTarget()
}