// MARK: - right -

public func right(degrees: Double) {
    turtle.increaseHeadingBy(degrees)
}

public func right(degrees: Int) {
    right(Double(degrees))
}

public func right() {
    right(90.0)
}


// MARK: - left -

public func left(degrees: Double = 90) {
    turtle.increaseHeadingBy(-degrees)
}

public func left(degrees: Int) {
    left(Double(degrees))
}

public func left() {
    left(90.0)
}

// MARK: - head -


public func head(direction: CompassDirection) {
    turtle.setHeadingTo(direction)
}

