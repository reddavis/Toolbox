import Foundation


extension DateComponentsFormatter {
    
    // MARK: Static
    
    /// An abbreviated duration formatter using hour, minute and second.
    public static var duration: DateComponentsFormatter {
        DateComponentsFormatter(
            style: .abbreviated,
            units: [.hour, .minute, .second]
        )
    }
    
    // MARK: Initialization
    
    /// Create a new date components formatter.
    /// - Parameters:
    ///   - style: The formatting style for unit names..
    ///   - units: The bitmask of calendrical units such as day and month to include in the output string.
    public convenience init(
        style: DateComponentsFormatter.UnitsStyle,
        units: NSCalendar.Unit
    ) {
        self.init()
        self.unitsStyle = style
        self.allowedUnits = units
    }
}
