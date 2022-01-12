import CoreGraphics


extension CGPoint {
    
    /// Create a uniform point.
    ///
    /// The x and y values will be identical.
    /// - Parameter value: The value.
    /// - Returns: A uniform point.
    public static func uniform(_ value: Double) -> CGPoint {
        .init(x: value, y: value)
    }
    
    /// Add two points.
    /// - Parameters:
    ///   - lhs: The point to add.
    ///   - rhs: The point to add to the current point.
    /// - Returns: The added point.
    public static func +(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x + rhs.x, y: lhs.y + rhs.y)
    }
    
    /// Subtract two points.
    /// - Parameters:
    ///   - lhs: The point to subtract.
    ///   - rhs: The point to subtract from the current point.
    /// - Returns: The subtracted point.
    public static func -(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x - rhs.x, y: lhs.y - rhs.y)
    }
    
    /// Multiply two points.
    /// - Parameters:
    ///   - lhs: The point to multiply.
    ///   - rhs: The point to multiply the current point by.
    /// - Returns: The multiplied point.
    public static func *(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x * rhs.x, y: lhs.y * rhs.y)
    }
    
    /// Divide two points.
    /// - Parameters:
    ///   - lhs: The point to divide.
    ///   - rhs: The point to divide the current point by.
    /// - Returns: The divided CGPoint.
    public static func /(lhs: CGPoint, rhs: CGPoint) -> CGPoint {
        CGPoint(x: lhs.x / rhs.x, y: lhs.y / rhs.y)
    }
}
