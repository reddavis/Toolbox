import SwiftUI


/// Modify a view to display a conditional loading state.
///
/// This modifier gives the ability to mark a view as loading. When the view
/// is loading, the view that is being modified will be hidden and a progress view will
/// be displayed.
///
/// The view that is being modified is not removed from the view hierarchy and therefore
/// marking a view as loading will not cause the layout to change.
public struct LoadingViewModifier: ViewModifier {
    
    // Private
    private let isLoading: Bool
    
    // MARK: Initialization
    
    /// Create a new `LoadingViewModifier` instance.
    /// - Parameter isLoading: Indicate whether the loading UI should be displayed or not.
    public init(isLoading: Bool) {
        self.isLoading = isLoading
    }
    
    // MARK: Body
    
    public func body(content: Content) -> some View {
        ZStack {
            ProgressView()
                .isHidden(!self.isLoading)
            content
                .isHidden(self.isLoading)
        }
    }
}



// MARK: View

extension View {
    
    /// Indicate whether a view is loading or not.
    ///
    /// This modifier gives the ability to mark a view as loading. When the view
    /// is loading, the view that is being modified will be hidden and a progress view will
    /// be displayed.
    ///
    /// The view that is being modified is not removed from the view hierarchy and therefore
    /// marking a view as loading will not cause the layout to change.
    ///
    /// This modifier is useful for indicating loading state on views such as buttons.
    /// - Parameter loading: Indicate whether the view is loading or not.
    /// - Returns: The modified view that displays a loading state or not.
    public func isLoading(_ loading: Bool) -> some View {
        self.modifier(LoadingViewModifier(isLoading: loading))
    }
}



// MARK: Preview

struct LoadingViewModifier_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            Text("Not loading")
                .isLoading(false)
            .toggleStyle(.switch)
            
            Text("Loading")
                .isLoading(true)
        }
    }
}
