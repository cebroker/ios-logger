//
//  LogMediator.swift
//  Logger
//
//  Created by Carlos Pava on 9/24/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

public class LogMediator {

    private var registerLogs: [RegisterLogType] = []
    
    public init() {}
    
    public func add(registerLog: RegisterLogType) {
        registerLogs.append(registerLog)
    }
    
    public func send(log: Log) {
        for registerLog in registerLogs {
            registerLog.send(log: log)
        }
    }
}
