import Foundation


extension NumberFormatter {
    
    // MARK: Helpers
    
    /// Create a new `NumberFormatter` instance configured to format
    /// percentage changes.
    ///
    /// The default configuration displays a maximum of 2 fraction digits.
    ///
    /// Examples
    /// - +1.23%
    /// - -0.56%
    /// - +1%
    /// - Parameter maximumFractionDigits: The maximum number of digits after the decimal separator.
    /// - Returns: A `NumberFormatter` instance configured to format percentage changes.
    public static func percentChange(maximumFractionDigits: Int = 2) -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .percent
        formatter.maximumFractionDigits = maximumFractionDigits
        formatter.negativePrefix = "-"
        formatter.positivePrefix = "+"
        
        return formatter
    }
    
    // MARK: Formatting
    
    /// Return a formatted string from an optional double.
    ///
    /// If the double or the formatting fails then nil is returned.
    /// - Parameter value: The double value to format.
    /// - Returns: An optional formatted string.
    public func string(from value: Double?) -> String? {
        guard let value = value else { return nil }
        return self.string(from: NSNumber(value: value))
    }
}
