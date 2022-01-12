import SnapshotTesting
import SwiftUI
import XCTest
@testable import Toolbox


final class LoadingViewModifierTests: XCTestCase {
    func testNotLoading() {
        assertSnapshot(
            matching: self.view(isLoading: false),
            as: .image,
            record: false
        )
    }
    
    func testLoading() {
        assertSnapshot(
            matching: self.view(isLoading: true),
            as: .image,
            record: false
        )
    }
    
    // MARK: Helpers
    
    private func view(isLoading: Bool) -> some View {
        Button(
            "Button",
            action: { }
        )
        .fixedSize(horizontal: true, vertical: true)
        .isLoading(isLoading)
    }
}
