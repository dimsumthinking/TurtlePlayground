import Foundation

typealias Degrees = Double
typealias Radians = Double

extension Degrees {
    func toRadians() -> Radians {
        return self/180 * M_PI
    }
}


public func repeat(numberOfTimes: Int, action:() -> ()) {
    for _ in 1 ... numberOfTimes {
        action()
    }
}

private func repeat(numberOfTimes: Int)( action:() -> ()) {
    repeat(numberOfTimes, action)
}
