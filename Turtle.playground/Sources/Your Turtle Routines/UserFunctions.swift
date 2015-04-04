import Foundation

public func hexagon(sideLength: Int) {
    for i in 1 ... 6 {
        forward(sideLength)
        right(60)
    }
}
