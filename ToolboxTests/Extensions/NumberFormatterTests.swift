import XCTest
@testable import Toolbox


final class NumberFormatterTests: XCTestCase {
    func testOptionalInitializers() {
        let formatter = NumberFormatter()
        XCTAssertNil(formatter.string(from: nil))
        XCTAssertEqual(formatter.string(from: 1.0), "1")
    }
    
    func testPercentageChangeFormat() {
        let formatter = NumberFormatter.percentChange()
        XCTAssertEqual(formatter.string(from: 0.1), "+10%")
        XCTAssertEqual(formatter.string(from: 0.23), "+23%")
        XCTAssertEqual(formatter.string(from: -0.1), "-10%")
        XCTAssertEqual(formatter.string(from: -0.23), "-23%")
    }
}
