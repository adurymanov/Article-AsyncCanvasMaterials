import XCTest
import OSLog

final class SwiftUI_Draw_playgroundUITests: XCTestCase {
    
    let pointOfInterest = OSLog(
        subsystem: "com.ad.AsyncCanvas",
        category: .pointsOfInterest
    )

    func wait(for seconds: Double) {
        let alertExpectation = XCTestExpectation(description: "delay")
        DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
            alertExpectation.fulfill()
        }

        wait(for: [alertExpectation], timeout: seconds)
    }
    
    func test(app: XCUIApplication) {
        wait(for: 5)
        os_signpost(.begin, log: pointOfInterest, name: "test")
        app.buttons["Show lines"].tap()
        wait(for: 10)
        os_signpost(.end, log: pointOfInterest, name: "test")
    }
    
    func testCanvas() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Canvas"].tap()
        test(app: app)
    }
    
    func testShapes() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Shapes"].tap()
        test(app: app)
    }
    
    func testCGCanvas() throws {
        let app = XCUIApplication()
        app.launch()
        app.buttons["Canvas CG"].tap()
        test(app: app)
    }

}
