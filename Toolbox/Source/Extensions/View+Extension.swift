import SwiftUI


extension View {
    
    /// Type erase a view to an AnyView.
    /// - Returns: The current view wrapped in an AnyView.
    public func erasedToAnyView() -> AnyView { AnyView(self) }
    
    /// Hide/show the current view.
    ///
    /// By default hidden views remain in the view hierarchy and affect layout. Use the
    /// `remove` parameter to remove the view from the view hierarchy.
    /// - Parameters:
    ///   - hidden: Indicate whether the view is hidden or not.
    ///   - remove: Indicate whether to remove the view from the view hierarchy.
    /// - Returns:
    @ViewBuilder
    public func isHidden(_ hidden: Bool, remove: Bool = false) -> some View {
        if hidden {
            if !remove { self.hidden() }
        } else {
            self
        }
    }
    
#if canImport(UIKit)
    
    /// Request that whichever view current is first responder to relinquish its status as
    /// first responder in its window.
    public func resignFirstResponder() {
        UIApplication.shared.sendAction(
            #selector(UIResponder.resignFirstResponder),
            to: nil,
            from: nil,
            for: nil
        )
    }
#endif
}
