import Foundation


extension NSRegularExpression {
    
    // MARK: Initialization
    
    /// Create a NSRegularExpression instance with the specified regular expression pattern and options.
    ///
    /// A preconditionFailure is raised if the pattern is invalid.
    /// - Parameters:
    ///   - pattern: The regular expression pattern to compile.
    ///   - options: The regular expression options that are applied to the expression during matching.
    ///   See NSRegularExpression.Options for possible values.
    public convenience init(_ pattern: String, options: NSRegularExpression.Options = []) {
        do {
            try self.init(pattern: pattern, options: options)
        }
        catch {
            preconditionFailure("Invalid regex pattern: \(pattern)")
        }
    }
    
    // MARK: Matches
    
    /// Check whether the regular expression matches the value given.
    /// - Parameter value: The value to check against the regular expression.
    /// - Returns: A boolean to indicate the regular expression matches the value given.
    public func matches(_ value: String) -> Bool {
        let range = NSRange(location: 0, length: value.utf16.count)
        return self.firstMatch(in: value, options: [], range: range) != nil
    }
    
    /// Return all the values from a string that the regex matches.
    /// - Parameter value: The value to extract matching values from.
    /// - Returns: An array of matched strings.
    public func matchedValues(_ value: String) -> [String] {
        self.matches(
            in: value,
            options: [],
            range: NSRange(
                location: 0,
                length: value.utf16.count
            )
        ).compactMap { result in
            Range(
                result.range,
                in: value
            ).map {
                String(value[$0])
            }
        }
    }
}
