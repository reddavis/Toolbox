import XCTest
@testable import Toolbox


final class SequenceTests: XCTestCase {
    func testGroupIntoSubgroups() {
        let array = [1, 2, 3, 4, 5, 6]
        var grouped = array.chunks(of: 2)
        
        XCTAssertEqual(grouped.count, 3)
        XCTAssertEqual(grouped[0].count, 2)
        
        grouped = array.chunks(of: 3)
        XCTAssertEqual(grouped.count, 2)
        XCTAssertEqual(grouped[0].count, 3)
        
        grouped = array.chunks(of: 4)
        XCTAssertEqual(grouped.count, 2)
        XCTAssertEqual(grouped[0].count, 4)
        XCTAssertEqual(grouped[1].count, 2)
    }
    
    func testGrouping() {
        let array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        
        // Group by even/odd
        let grouped = array.chunked(by: {
            $0 % 2 == 0
        })
        
        XCTAssertEqual(grouped.count, 2)
        XCTAssertEqual(grouped[true]?.count, 5)
        XCTAssertEqual(grouped[false]?.count, 5)
    }
    
    func testSum() {
        let vehicles: [Vehicle] = [
            .init(numberOfWheels: 1),
            .init(numberOfWheels: 2),
            .init(numberOfWheels: 10),
            .init(numberOfWheels: 4)
        ]
        
        XCTAssertEqual(17, vehicles.sum(of: \.numberOfWheels))
    }
}



// MARK: Vehicle

private struct Vehicle {
    let numberOfWheels: Int
}
