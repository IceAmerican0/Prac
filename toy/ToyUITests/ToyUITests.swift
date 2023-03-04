//
//  ToyUITests.swift
//  ToyUITests
//
//  Created by 박성준 on 2023/02/18.
//

import XCTest

final class ToyUITests: XCTestCase {

    override func setUpWithError() throws {
                
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
        
    }

    func testExample() throws {
        
        let app = XCUIApplication()
        app.launch()

    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
