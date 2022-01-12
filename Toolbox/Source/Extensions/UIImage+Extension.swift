#if canImport(UIKit)
import UIKit


extension UIImage {

    /// The width to height ratio represented as a decimal.
    public var ratio: Double {
        guard self.size.height > 0.0 else { return 0 }
        return self.size.width / self.size.height
    }

    // MARK: Rotate
    
    /// Rotate the image by a specified number of radians.
    /// - Parameter radians: The radians to rotate by.
    /// - Returns: The rotated image.
    public func rotate(radians: Double) -> UIImage {
        var newSize = CGRect(
            origin: .zero,
            size: self.size
        )
        .applying(CGAffineTransform(rotationAngle: radians))
        .size
        
        newSize.width = floor(newSize.width)
        newSize.height = floor(newSize.height)
        
        return UIGraphicsImageRenderer(size: newSize).image { context in
            context.cgContext.translateBy(x: newSize.width / 2.0, y: newSize.height / 2.0)
            context.cgContext.rotate(by: radians)

            self.draw(
                in: CGRect(
                    x: -self.size.width / 2.0,
                    y: -self.size.height / 2.0,
                    width: self.size.width,
                    height: self.size.height
                )
            )
        }
    }

    // MARK: Resize

    /// Resize the image to the specified size.
    /// - Parameter size: The size the new image should be.
    /// - Returns: The resized image.
    public func resize(to size: CGSize) -> UIImage {
        self.resize(to: size, keepRatio: false)
    }

    /// Resize the image to the specified size.
    /// - Parameters:
    ///   - size: The size the new image should be.
    ///   - keepRatio: A flag to indicate whether the image's ratio should be kept.
    /// - Returns: The resized image.
    public func resize(to size: CGSize, keepRatio: Bool) -> UIImage {
        let newSize: CGSize
        if keepRatio {
            let widthRatio = size.width / self.size.width
            let heightRatio = size.height / self.size.height
            let ratio = min(widthRatio, heightRatio)
            
            newSize = CGSize(width: self.size.width * ratio, height: self.size.height * ratio)
        } else {
            newSize = size
        }
        
        return UIGraphicsImageRenderer(size: newSize).image { _ in
            self.draw(in: CGRect(origin: .zero, size: newSize))
        }
    }
    
    // MARK: Crop
    
    /// Crop the image to the specified rect.
    /// - Parameter rect: The rect to crop the image to.
    /// - Returns: The cropped image.
    public func crop(to rect: CGRect) -> UIImage {
        UIGraphicsImageRenderer(size: rect.size).image { context in
            context.clip(to: CGRect(origin: .zero, size: rect.size))

            self.draw(
                in: CGRect(
                    x: -rect.minX,
                    y: -rect.minY,
                    width: self.size.width,
                    height: self.size.height
                )
            )
        }
    }
}
#endif
