import XCTest
@testable import Toolbox


final class DoubleTests: XCTestCase {
    func testIsPositive() {
        XCTAssertTrue(0.1.isPositive)
        XCTAssertTrue(0.0.isPositive)
        XCTAssertFalse((-1.0).isPositive)
    }
}
