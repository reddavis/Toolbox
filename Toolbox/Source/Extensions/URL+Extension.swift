import Foundation


extension URL {
    
    /// A URL to the document directory.
    public static var documentDirectory: URL {
        FileManager.default.urls(
            for: .documentDirectory,
            in: .userDomainMask
        )[0]
    }
    
    /// A URL to the temporary directory.
    public static var _temporaryDirectory: URL {
        URL(
            fileURLWithPath: NSTemporaryDirectory(),
            isDirectory: true
        )
    }
    
    // MARK: Initialization
    
    /// Initialize a new URL with an optional string.
    ///
    /// If the string is `nil` or an invalid URL, then `nil` will be returned.
    /// - Parameter string: A string instance.
    public init?(string: String?) {
        guard
            let string = string,
            let url = URL(string: string) else {
            return nil
        }
        
        self = url
    }
}

// MARK: ExpressibleByStringLiteral

extension URL: ExpressibleByStringLiteral {

    /// Initialize a new URL with a string.
    ///
    /// A `preconditionFailure` is raised if the URL is invalid.
    /// - Parameter value: A string representation of the URL.
    public init(stringLiteral value: StaticString) {
        guard let url = URL(string: "\(value)") else { preconditionFailure("\(value) is an invalid URL") }
        self = url
    }
}
