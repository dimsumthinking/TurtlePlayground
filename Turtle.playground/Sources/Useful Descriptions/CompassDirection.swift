public enum CompassDirection: Double {
    case East = 0
    case North = 90
    case West = 180
    case South = 270
    
    func degrees() -> Double {
        return rawValue
    }
}