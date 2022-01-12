import Foundation


extension Int {
    
    /// Indicates whether the value is positive.
    public var isPositive: Bool { self >= 0 }
    
    /// Call a closure `self` number of times.
    /// - Parameter action: A closure to call.
    public func times(_ action: () -> Void) {
        for _ in 0..<self { action() }
    }
}
