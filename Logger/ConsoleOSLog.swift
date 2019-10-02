//
//  ConsoleOSLog.swift
//  Logger
//
//  Created by Carlos Pava on 9/23/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation
import os

public class ConsoleOSLog: RegisterLogType {
    
    public init() {}
    
    public func send(log: Log) {
        let data = log.toString()
        debugPrint(data)
        os_log("%@", log: self.setuplog(), data)
    }

    public func setuplog() -> OSLog {
        let subsystem = Bundle.main.infoDictionary![kCFBundleNameKey as String] as! String
        return OSLog(subsystem: subsystem, category: "Logger")
    }
}
