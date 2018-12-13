//
//  WebViewSampleTests.swift
//  WebViewSampleTests
//
//  Created by Shota Shimazu on 2018/11/07.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import XCTest
@testable import WebViewSample

class WebViewSampleTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
            let status: Bool = (0 == 0)
            
            if status {
                print("LOG: ", "YES!")
            }
        }
    }
    
    
    func testPerformanceIF() {
        self.measure {
            // Put the code you want to measure the time of here.
            
            if 0 == 0 {
                print("LOG: ", "YES!")
            }
        }
    }

}
