import Foundation


extension Sequence {
    
    // MARK: Chunking
    
    /// Group a sequence into grouped sequences of `size`.
    /// For example:
    /// Self: [a, b, c, d]
    /// Grouped by 2: [[a, b], [c, d]]
    /// - Parameter size: Size of group
    public func chunks(of size: Int) -> [[Iterator.Element]]
    {
        return self.reduce(into: [[Iterator.Element]]()) { (result, element) in
            guard var lastGroup = result.last,
                  lastGroup.count < size else
            {
                let group = [element]
                result.append(group)
                return
            }
            
            lastGroup.append(element)
            result[result.count - 1] = lastGroup
        }
    }
    
    /// Returns the result of grouping the elements of the sequence using the given closure.
    /// - Parameter handler: A closure that returns the grouping key.
    /// - Returns: A `Dictionary` instance of the grouped elements.
    public func chunked<N: Hashable>(
        by handler: (_ element: Iterator.Element) -> N
    ) -> [N : [Iterator.Element]] {
        self.compactChunked(by: handler)
    }
    
    /// Returns the result of grouping the non-nill elements of the sequence using the given closure.
    /// - Parameter handler: A closure that returns the grouping key.
    /// - Returns: A `Dictionary` instance of the grouped elements.
    public func compactChunked<N: Hashable>(
        by handler: (_ element: Iterator.Element) -> N?
    ) -> [N : [Iterator.Element]] {
        var groupedElements = [N : [Element]]()

        for element in self {
            guard let key = handler(element) else {
                continue
            }
            
            if groupedElements[key] == nil {
                groupedElements[key] = [Iterator.Element]()
            }
            
            groupedElements[key]?.append(element)
        }
        
        return groupedElements
    }
    
    // MARK: Sum
    
    /// Returns the sum of the value of the elements in the sequence.
    /// - Parameter keyPath: A key path to the elements value.
    /// - Returns: The sum of the value of the elements in the sequence.
    public func sum<T>(of keyPath: KeyPath<Element, T>) -> T where T: AdditiveArithmetic {
        self.reduce(into: T.zero) { $0 += $1[keyPath: keyPath] }
    }
}
