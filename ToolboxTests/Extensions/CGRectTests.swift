import XCTest
@testable import Toolbox


final class CGRectTests: XCTestCase {
    func testUniformBuilder() {
        XCTAssertEqual(
            CGRect.uniform(4),
            CGRect(x: 4, y: 4, width: 4, height: 4)
        )
    }
    
    func testAddition() {
        let rect = CGRect.uniform(10)
        XCTAssertEqual(
            rect + CGRect(x: 0.5, y: 2, width: 4, height: 5),
            CGRect(x: 10.5, y: 12, width: 14, height: 15)
        )
    }
    
    func testSubtraction() {
        let rect = CGRect.uniform(10)
        XCTAssertEqual(
            rect - CGRect(x: 0.5, y: 2, width: 4, height: 5),
            CGRect(x: 9.5, y: 8, width: 6, height: 5)
        )
    }
    
    func testMultiply() {
        let rect = CGRect.uniform(10)
        XCTAssertEqual(
            rect * CGRect(x: 0.5, y: 2, width: 4, height: 5),
            CGRect(x: 5, y: 20, width: 40, height: 50)
        )
    }
    
    func testDivide() {
        let rect = CGRect.uniform(10)
        XCTAssertEqual(
            rect / CGRect(x: 0.5, y: 2, width: 4, height: 5),
            CGRect(x: 20, y: 5, width: 2.5, height: 2)
        )
    }
}
