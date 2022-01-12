import XCTest
@testable import Toolbox


final class CGPointTests: XCTestCase {
    func testUniformBuilder() {
        XCTAssertEqual(CGPoint.uniform(4), CGPoint(x: 4, y: 4))
    }
    
    func testAddition() {
        let point = CGPoint(x: 10, y: 10)
        XCTAssertEqual(
            point + CGPoint(x: 10, y: 0.5),
            CGPoint(x: 20, y: 10.5)
        )
    }
    
    func testSubtraction() {
        let point = CGPoint(x: 10, y: 10)
        XCTAssertEqual(
            point - CGPoint(x: 10, y: 0.5),
            CGPoint(x: 0, y: 9.5)
        )
    }
    
    func testMultiply() {
        let point = CGPoint(x: 10, y: 10)
        XCTAssertEqual(
            point * CGPoint(x: 10, y: 0.5),
            CGPoint(x: 100, y: 5)
        )
    }
    
    func testDivide() {
        let point = CGPoint(x: 10, y: 10)
        XCTAssertEqual(
            point / CGPoint(x: 2, y: 10),
            CGPoint(x: 5, y: 1)
        )
    }
}
