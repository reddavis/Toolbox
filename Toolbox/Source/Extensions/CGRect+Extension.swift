import SwiftUI


extension CGRect {
    
    /// Create a uniform rect.
    ///
    /// The x, y, width and height values will be identical.
    /// - Parameter value: The value.
    /// - Returns: A uniform rect.
    public static func uniform(_ value: Double) -> CGRect {
        .init(origin: .uniform(value), size: .uniform(value))
    }
    
    /// Add two rects.
    /// - Parameters:
    ///   - lhs: The rect to add.
    ///   - rhs: The rect to add to the current rect.
    /// - Returns: The added rect.
    public static func +(lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(
            origin: lhs.origin + rhs.origin,
            size: lhs.size + rhs.size
        )
    }
    
    /// Subtract two rects.
    /// - Parameters:
    ///   - lhs: The rect to subtract.
    ///   - rhs: The rect to subtract from the current rect.
    /// - Returns: The subtracted rect.
    public static func -(lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(
            origin: lhs.origin - rhs.origin,
            size: lhs.size - rhs.size
        )
    }
    
    /// Multiply a rect.
    /// - Parameters:
    ///   - lhs: The rect to multiply.
    ///   - rhs: The rect to multiply the current rect by.
    /// - Returns: The multiplied CGRect.
    public static func *(lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(
            origin: lhs.origin * rhs.origin,
            size: lhs.size * rhs.size
        )
    }
    
    /// Divide a rect.
    /// - Parameters:
    ///   - lhs: The rect to divide.
    ///   - rhs: The rect to divide the current rect by.
    /// - Returns: The divided rect.
    public static func /(lhs: CGRect, rhs: CGRect) -> CGRect {
        CGRect(origin: lhs.origin / rhs.origin, size: lhs.size / rhs.size)
    }
}
