public enum CompassDirection: Double {
    case East = 0
    case South = 90
    case West = 180
    case North = 270
    
    func degrees() -> Double {
        return rawValue
    }
}