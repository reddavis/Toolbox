import XCTest
@testable import Toolbox


final class IntTests: XCTestCase {
    func testTimes() {
        var value = 0
        5.times {
            value += 1
        }
        
        XCTAssertEqual(5, value)
    }
    
    func testIsPositive() {
        XCTAssertTrue(1.isPositive)
        XCTAssertTrue(0.isPositive)
        XCTAssertFalse((-1).isPositive)
    }
}
