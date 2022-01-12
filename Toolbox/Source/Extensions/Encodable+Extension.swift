import Foundation


extension Encodable {
    
    /// Create a JSON-encoded representation of self.
    /// - Parameter encoder: The JSON encoder to encode with.
    /// - Throws: An error of type `EncodingError`.
    /// - Returns: The JSON encoded data.
    public func encode(with encoder: JSONEncoder = .init()) throws -> Data {
        try encoder.encode(self)
    }
}
