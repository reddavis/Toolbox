import SwiftUI


// MARK: UIKit helpers

#if canImport(UIKit)
import UIKit


extension Image {
    
    /// Creates a SwiftUI image from an optional UIKit image instance.
    ///
    /// If the UIKit image is nil, then nil will be returned.
    /// - Parameter uiImage: The UIImage instance.
    public init?(uiImage: UIImage?) {
        guard let uiImage = uiImage else {
            return nil
        }
        
        self = .init(uiImage: uiImage)
    }
}
#endif



// MARK: AppKit helpers

#if canImport(AppKit)
import AppKit


extension Image {
    
    /// Creates a SwiftUI image from an optional AppKit image instance.
    ///
    /// If the AppKit image is nil, then nil will be returned.
    /// - Parameter nsImage: The NSImage instance.
    public init?(nsImage: NSImage?) {
        guard let nsImage = nsImage else {
            return nil
        }
        
        self = .init(nsImage: nsImage)
    }
}
#endif
