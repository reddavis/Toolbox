import SwiftUI


extension EdgeInsets {
    
    /// Create a uniform edge inset.
    ///
    /// The width and height values will be identical.
    /// - Parameter value: The value.
    /// - Returns: A uniform size.
    public static func uniform(_ inset: Double) -> EdgeInsets {
        .init(
            top: inset,
            leading: inset,
            bottom: inset,
            trailing: inset
        )
    }
}
