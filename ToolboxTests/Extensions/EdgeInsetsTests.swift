import SwiftUI
import XCTest
@testable import Toolbox


final class EdgeInsetsTests: XCTestCase {
    func testUniformInitialization() {
        let value = 16.0
        let inset = EdgeInsets.uniform(value)
        let otherInset = EdgeInsets(top: value, leading: value, bottom: value, trailing: value)
        
        XCTAssertEqual(inset, otherInset)
    }
}
