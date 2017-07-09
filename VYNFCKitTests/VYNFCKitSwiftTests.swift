//
//  VYNFCKitSwiftTests.swift
//  VYNFCKitTests
//
//  Created by Vince Yuan on 7/8/17.
//  Copyright © 2017 Vince Yuan. All rights reserved.
//

import XCTest
import VYNFCKit
import CoreNFC

class VYNFCKitSwiftTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testTextPayload() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let parser = VYNFCNDEFPayloadParser.init()
        let payload = VYNFCKitTestsHelper.correctTextPayload()
        let parsedPayload = parser.parse(payload)
        XCTAssertNotNil(parsedPayload)
        XCTAssert(parsedPayload?.text == "This is text.")
        XCTAssertEqual(parsedPayload?.type, .text)
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
