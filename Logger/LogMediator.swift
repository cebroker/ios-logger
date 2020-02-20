//
//  LogMediator.swift
//  Logger
//
//  Created by Carlos Pava on 9/24/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

public class LogMediator {

    private var registerLogs: [RegisterLog] = []

    public init() { }

    public func add(registerLog: RegisterLog) {
        registerLogs.append(registerLog)
    }

    public func send(log: Log) {
        for registerLog in registerLogs {
            registerLog.send(log: log)
        }
    }

    
    public func send<T>(key: KeyType, value: T) {
        for registerLog in registerLogs {
            registerLog.send(key: key, value: value)
        }
    }
}
