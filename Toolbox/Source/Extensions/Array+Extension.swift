import Foundation


// MARK: Subscript

extension Array {
    public subscript(safe index: Int) -> Element? {
        guard
            index >= 0,
            index < self.endIndex else {
            return nil
        }

        return self[index]
    }
    
    public subscript(safe index: Int?) -> Element? {
        guard let index = index else {
            return nil
        }

        return self[safe: index]
    }
}


// MARK: Helpers

infix operator <<?

extension Array {
    
    /// Syntactic sugar to add a new element at the end of an array.
    /// - Parameters:
    ///   - lhs: The array to append an element to.
    ///   - rhs: The element to append to the array.
    public static func <<(lhs: inout Array, rhs: Array.Element) {
        lhs.append(rhs)
    }
    
    /// Syntactic sugar to add a new optional element at the end of an array.
    ///
    /// If the element is nil then the array will remain unchanged.
    /// - Parameters:
    ///   - lhs: The array to append an element to.
    ///   - rhs: The element to append to the array.
    public static func <<?(lhs: inout Array, rhs: Array.Element?) {
        guard let rhs = rhs else { return }
        lhs.append(rhs)
    }
}
