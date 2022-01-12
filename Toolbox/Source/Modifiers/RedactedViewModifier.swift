import SwiftUI


/// Modify a view to display a conditional redacted state.
public struct RedactedViewModifier: ViewModifier {
    
    // Private
    private let isRedacted: Bool
        
    // MARK: Initialization
    
    /// Create a new `RedactedViewModifier` instance.
    /// - Parameter isRedacted: Indicate whether the view should be redacted or not.
    public init(isRedacted: Bool) {
        self.isRedacted = isRedacted
    }
    
    // MARK: Body
    
    public func body(content: Content) -> some View {
        Group {
            if self.isRedacted {
                content
                    .redacted(reason: .placeholder)
            } else {
                content
            }
        }
    }
}



// MARK: View

extension View {
    
    /// Adds a redaction to this view hierarchy.
    /// - Parameter redacted: Indicate whether the view should be redacted or not.
    /// - Returns: The modified view.
    public func isRedacted(_ redacted: Bool) -> some View {
        self.modifier(RedactedViewModifier(isRedacted: redacted))
    }
}
