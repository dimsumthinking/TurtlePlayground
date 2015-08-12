import Foundation



// put your functions here

public func hexagon(length: Int) {
    for _ in 1 ... 6 {
        forward(length)
        right(60)
    }
}