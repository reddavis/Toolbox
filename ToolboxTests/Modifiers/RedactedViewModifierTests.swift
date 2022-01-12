import SnapshotTesting
import SwiftUI
import XCTest
@testable import Toolbox


final class RedactedViewModifierTests: XCTestCase {
    func testNonRedacted() {
        assertSnapshot(
            matching: self.view(isRedacted: false),
            as: .image,
            record: false
        )
    }
    
    func testRedacted() {
        assertSnapshot(
            matching: self.view(isRedacted: true),
            as: .image,
            record: false
        )
    }
    
    // MARK: Helpers
    
    private func view(isRedacted: Bool) -> some View {
        Button(
            "Button",
            action: { }
        )
        .fixedSize(horizontal: true, vertical: true)
        .isRedacted(isRedacted)
    }
}
