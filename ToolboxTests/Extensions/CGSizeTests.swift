import XCTest
@testable import Toolbox


final class CGSizeTests: XCTestCase {
    func testUniformBuilder() {
        XCTAssertEqual(CGSize.uniform(4), CGSize(width: 4, height: 4))
    }
    
    func testAddition() {
        let size = CGSize.uniform(10)
        XCTAssertEqual(
            size + CGSize(width: 10, height: 0.5),
            CGSize(width: 20, height: 10.5)
        )
    }
    
    func testSubtraction() {
        let size = CGSize.uniform(10)
        XCTAssertEqual(
            size - CGSize(width: 10, height: 0.5),
            CGSize(width: 0, height: 9.5)
        )
    }
    
    func testMultiply() {
        let size = CGSize.uniform(10)
        XCTAssertEqual(
            size * CGSize(width: 0.5, height: 2),
            CGSize(width: 5, height: 20)
        )
    }
    
    func testDivide() {
        let size = CGSize.uniform(10)
        XCTAssertEqual(
            size / CGSize(width: 2, height: 10),
            CGSize(width: 5, height: 1)
        )
    }
}
