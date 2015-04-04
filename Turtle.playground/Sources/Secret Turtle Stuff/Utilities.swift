import Foundation

typealias Degrees = Double
typealias Radians = Double

extension Degrees {
    func toRadians() -> Radians {
        return self/180 * M_PI
    }
}

public extension Int {
    public func repeat(action:() -> ()) {
        for _ in 1 ... self {
            action()
        }
    }
}

public func repeat(numberOfTimes: Int, action:() -> ()) {
    for _ in 1 ... numberOfTimes {
        action()
    }
}

func repeat(numberOfTimes: Int)( action:() -> ()) {
    for _ in 1 ... numberOfTimes {
        action()
    }
}

public let doThreeTimes = repeat(3)