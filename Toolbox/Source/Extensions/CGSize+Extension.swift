import CoreGraphics


extension CGSize {
    
    /// Create a uniform size.
    ///
    /// The width and height values will be identical.
    /// - Parameter value: The value.
    /// - Returns: A uniform size.
    public static func uniform(_ value: Double) -> CGSize {
        .init(width: value, height: value)
    }
    
    /// Add two sizes.
    /// - Parameters:
    ///   - lhs: The size to add.
    ///   - rhs: The size to add to the current size.
    /// - Returns: The added size.
    public static func +(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width + rhs.width, height: lhs.height + rhs.height)
    }
    
    /// Subtract two sizes.
    /// - Parameters:
    ///   - lhs: The size to subtract.
    ///   - rhs: The size to subtract from the current size.
    /// - Returns: The subtracted size.
    public static func -(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width - rhs.width, height: lhs.height - rhs.height)
    }
    
    /// Multiply two sizes.
    /// - Parameters:
    ///   - lhs: The size to multiply.
    ///   - rhs: The size to multiply the current size by.
    /// - Returns: The multiplied size.
    public static func *(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(
            width: lhs.width * rhs.width,
            height: lhs.height * rhs.height
        )
    }
    
    /// Divide two sizes.
    /// - Parameters:
    ///   - lhs: The size to divide.
    ///   - rhs: The size to divide the current size by.
    /// - Returns: The divided CGPoint.
    public static func /(lhs: CGSize, rhs: CGSize) -> CGSize {
        CGSize(width: lhs.width / rhs.width, height: lhs.height / rhs.height)
    }
}
