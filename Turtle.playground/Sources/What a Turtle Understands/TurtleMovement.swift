// MARK: - forward -

public func forward(distance: Double) {
    turtle.forward(distance)
}

public func forward(distance: Int) {
    forward(Double(distance))
}

public func forward() {
    forward(50.0)
}

// MARK: - back -

public func back(distance: Double) {
    turtle.forward(-distance)
}

public func back(distance: Int) {
    back(Double(distance))
}

public func back() {
    back(50.0)
}

// MARK: - home -

public func home() {
    turtle.home()
}
