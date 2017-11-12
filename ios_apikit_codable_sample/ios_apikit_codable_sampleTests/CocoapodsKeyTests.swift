//
//  CocoapodsKeyTests.swift
//  ios_apikit_codable_sampleTests
//
//  Created by yogasawara@stv on 2017/11/12.
//  Copyright © 2017年 Sunday Carpenter. All rights reserved.
//

import XCTest
import Keys

@testable import ios_apikit_codable_sample

class CocoapodsKeyTests: XCTestCase {
    let keys = Ios_apikit_codable_sampleKeys()

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        XCTAssertNotNil(keys.accessKey)
    }
    
}
