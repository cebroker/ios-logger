//
//  RegisterLogType.swift
//  Logger
//
//  Created by Carlos Pava on 9/23/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

protocol RegisterLogType {
    func send(log: Log)
}

protocol ReportLogType {
    func send<T>(key: KeyType, value: T)
}

public protocol KeyType {
    var key : String { get }
}

open class RegisterLog: RegisterLogType, ReportLogType {
    public init() {}
    open func send(log: Log) { }
    open func send<T>(key: KeyType, value: T) { }
}
