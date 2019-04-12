//
//  ActionBarTestUITests.swift
//  ActionBarTestUITests
//
//  Created by Victor K Lee on 12/04/2019.
//  Copyright © 2019 Victor K Lee. All rights reserved.
//

import XCTest

class ActionBarTestUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        
        let app = XCUIApplication()
        let actionBar = app.otherElements["actionBar"]
        
        app.buttons["Word"].tap()
        
        app.buttons["Sheet"].tap()
        app.buttons["Slide"].tap()
        app.buttons["PDF"].tap()
        app.buttons["Editor"].tap()
        app.buttons["menu"].tap()
        app.buttons["play"].tap()
        app.buttons["search"].tap()
        app.buttons["icon"].tap()
        app.buttons["more"].tap()
        
    }

}
