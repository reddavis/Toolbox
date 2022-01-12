import Foundation
import SwiftUI

#if canImport(UIKit)
import UIKit
#endif

#if canImport(AppKit)
import AppKit
#endif


extension String {
    
    // MARK: Color
    
    /// A color representation of the string.
    public var asColor: Color {
        let total = self.unicodeScalars.reduce(into: 0) { result, scalar in
            result += Int(UInt32(scalar))
        }
        
        srand48(total * 200)
        let red = drand48()
        
        srand48(total)
        let green = drand48()
        
        srand48(total / 200)
        let blue = drand48()
        
        return Color(
            .displayP3,
            red: red,
            green: green,
            blue: blue
        )
    }
    
#if canImport(UIKit)
    /// A color representation of the string.
    public var asUIColor: UIColor {
        let total = self.unicodeScalars.reduce(into: 0) { result, scalar in
            result += Int(UInt32(scalar))
        }
        
        srand48(total * 200)
        let red = drand48()
        
        srand48(total)
        let green = drand48()
        
        srand48(total / 200)
        let blue = drand48()
        
        return UIColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1.0
        )
    }
#endif
    
#if canImport(AppKit)
    /// A color representation of the string.
    public var asNSColor: NSColor {
        let total = self.unicodeScalars.reduce(into: 0) { result, scalar in
            result += Int(UInt32(scalar))
        }
        
        srand48(total * 200)
        let red = drand48()
        
        srand48(total)
        let green = drand48()
        
        srand48(total / 200)
        let blue = drand48()
        
        return NSColor(
            red: red,
            green: green,
            blue: blue,
            alpha: 1.0
        )
    }
#endif
}
