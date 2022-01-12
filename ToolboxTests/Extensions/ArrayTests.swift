import XCTest
@testable import Toolbox


final class ArrayTests: XCTestCase {
    func testSafeSubscripting() {
        let array = [0, 1]
        XCTAssertNil(array[safe: 2])
        XCTAssertNil(array[safe: nil])
    }
    
    func testAppendingOperator() {
        var array = [0, 1]
        array << 2
        XCTAssertEqual(array, [0, 1, 2])
        
        array <<? nil
        XCTAssertEqual(array, [0, 1, 2])
    }
}
