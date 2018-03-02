//
//  NWMuseumARUITests.swift
//  NWMuseumARUITests
//
//  Created by lu she on 2018-03-02.
//  Copyright © 2018 NWMuseumAR. All rights reserved.
//

import XCTest

class NWMuseumARUITests: XCTestCase {
    var app: XCUIApplication!

    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        
        // We send a command line argument to our app,
        // to enable it to reset its state
        app.launchArguments.append("--uitesting")
    }
    
    func testGoingThroughOnboarding() {
        app.launch()
        
        // Make sure we're displaying onboarding
        XCTAssertTrue(app.isDisplayingOnboarding)
        
        // Swipe left three times to go through the pages
        app.swipeLeft()
        app.swipeLeft()
        
        // Tap the "Done" button
        app.buttons["Start app"].tap()
        
        // Onboarding should no longer be displayed
        XCTAssertFalse(app.isDisplayingOnboarding)
    }
    
    
}
