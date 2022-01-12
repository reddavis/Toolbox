#if canImport(UIKit)
import SwiftUI


/// A view modifier that will call a closure when it detects that the device has been shaken.
public struct DeviceShakeViewModifier: ViewModifier {
    
    /// Action closure
    public typealias Action = () -> Void
    
    /// The action closure. This is called when the view modifier detects that the device has been shaken.
    public let action: Action
    
    // MARK: Initialization
    
    /// Create a new `DeviceShakeViewModifier` instance.
    /// - Parameter action: The action closure that is called when the view modifier
    /// detects that the device has been shaken.
    public init(action: @escaping Action) {
        self.action = action
    }
    
    // MARK: Body
    
    public func body(content: Content) -> some View {
        content
            .onReceive(NotificationCenter.default.publisher(for: UIDevice.deviceDidShakeNotification)) { _ in
                self.action()
            }
    }
}



// MARK: UIDevice

extension UIDevice {
    fileprivate static let deviceDidShakeNotification = Notification.Name(rawValue: "deviceDidShakeNotification")
}



// MARK: UIWindow

extension UIWindow {
    open override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        defer { super.motionEnded(motion, with: event) }
        
        guard motion == .motionShake else { return }
        NotificationCenter.default.post(name: UIDevice.deviceDidShakeNotification, object: nil)
     }
}



// MARK: View

extension View {
    
    /// Perform an action when the device is shaken.
    /// - Parameter action: The action to perform.
    /// - Returns: The view.
    public func onShake(perform action: @escaping () -> Void) -> some View {
        self.modifier(DeviceShakeViewModifier(action: action))
    }
}
#endif
