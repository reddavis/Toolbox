import Foundation


extension RawRepresentable {
    // MARK: Initialization
    
    /// Creates a new instance with the specified raw value.
    /// - Parameter rawValue: The raw value to use for the new instance.
    public init?(rawValue: RawValue?)
    {
        guard let rawValue = rawValue else { return nil }
        self.init(rawValue: rawValue)
    }
}
