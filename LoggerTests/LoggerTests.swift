//
//  LoggerTests.swift
//  LoggerTests
//
//  Created by Carlos Pava on 9/19/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import XCTest
@testable import Logger

class LoggerTests: XCTestCase {

    var date: Date?

    override func setUp() {
        self.date = Date()
    }

    func testLogWithData() {
        let logMock = LogMock(logCategory: .debug,
                              data: [:],
                              message: "This is a message",
                              fileName: "testLogWithData",
                              line: 19,
                              functionName: "testLogWithData")
        
        guard let date = self.date else {
            assert(false)
        }
        let expect = "\(date.toString()) [🐞 Debug]: [testLogWithData: 19 testLogWithData] -> [:] message: This is a message"

        XCTAssert(logMock.toString() == expect)
    }

    func testLogWithoutData() {
        let logMock = LogMock(logCategory: .debug,
                              data: nil,
                              message: "This is a message",
                              fileName: "testLogWithoutData",
                              line: 29,
                              functionName: "testLogWithoutData")
        
        guard let date = self.date else {
            assert(false)
        }
        let expect = "\(date.toString()) [🐞 Debug]: [testLogWithoutData: 29 testLogWithoutData] ->  message: This is a message"

        XCTAssert(logMock.toString() == expect)
    }
    
    func testLogWrapper() {
        let logMock = LogMock(logCategory: .debug,
                              data: nil,
                              message: "This is a message",
                              fileName: "testLogWrapper",
                              line: 41,
                              functionName: "testLogWrapper")
        
        guard let date = self.date else {
            assert(false)
        }
        
        let wrapper = logMock.getLogWrapper()
   
        XCTAssertEqual(wrapper.date, date.toString())
        XCTAssertEqual(wrapper.data, "")
        XCTAssertEqual(wrapper.fileName, "testLogWrapper")
        XCTAssertEqual(wrapper.functionName, "testLogWrapper")
        XCTAssertEqual(wrapper.line, "41")
        XCTAssertEqual(wrapper.type, "[🐞 Debug]")
    }
}
