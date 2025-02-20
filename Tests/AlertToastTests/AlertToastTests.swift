import XCTest
@testable import AlertToast

final class AlertToastTests: XCTestCase {
    
    @available(iOS 14, macOS 11, tvOS 16, *)
    func testInit() {
        let toast = AlertToast(type: .regular, title: "Title", subTitle: "Subtitle")
        XCTAssertEqual(toast.type, .regular)
        XCTAssertEqual(toast.title, "Title")
        XCTAssertEqual(toast.subTitle, "Subtitle")
    }

    @available(iOS 14, macOS 11, tvOS 16, *)
    static var allTests = [
        ("testInit", testInit),
    ]
}
