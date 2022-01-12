import Foundation


extension Character {
    
    // MARK: Initialization
    
    /// Initialize a new character with an optional string.
    ///
    /// If the string is `nil` then `nil` will be returned.
    /// - Parameter string: A string instance.
    public init?(string: String?) {
        guard let string = string else {
            return nil
        }
        
        self = Character(string)
    }
}

// MARK: ExpressibleByStringLiteral

extension Character: ExpressibleByStringLiteral {
    
    /// Initialize a new character with a string.
    /// - Parameter value: A string instance.
    public init(stringLiteral value: StaticString) {
        self = Character("\(value)")
    }
}
