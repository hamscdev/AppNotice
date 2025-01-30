//
//  newyorktimesTestsUI.swift
//  newyorktimesTestsUI
//
//  Created by 1135794 on 29/01/25.
//

import XCTest

final class newyorktimesTestsUI: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app = XCUIApplication()
        app.launch()

		let button = app.buttons["1 daybutton"]
		XCTAssertTrue(button.exists, "Existe el boton 1")
		let button2 = app.buttons["7 daysbutton"]
		XCTAssertTrue(button2.exists, "Existe el boton 7")
		let button3 = app.buttons["30 daysbutton"]
		XCTAssertTrue(button3.exists, "Existe el boton 30")

		let textSelect = app.staticTexts["Select notice period: "]
		XCTAssertTrue(textSelect.exists, "El texto existe dentro de la vista.")
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
}
