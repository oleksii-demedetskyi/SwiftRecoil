import XCTest
@testable import Recoil

final class RecoilTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Recoil().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
