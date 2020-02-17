//
//  Logger.swift
//  Logger
//
//  Created by Carlos Pava on 9/20/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

public class Logger {
    
    public static let shared = Logger()
    
    private let mediator: LogMediator
    
    private init(){
        self.mediator = LogMediator()
    }
    
    open func addRegisterLogger(_ log: RegisterLog) {
        self.mediator.add(registerLog: log)
    }
    
    public func debugLog(logCategory: LogCategory,
        data: Any? = nil,
        message: String = "",
        fileName: String = #file,
        line: Int = #line,
        functionName: String = #function) {
        
        let log = Log(logCategory: logCategory,
                      data: data,
                      message: message,
                      fileName: fileName,
                      line: line,
                      functionName: functionName)
    
        mediator.send(log: log)
    }
    
    public func sendReport<T>(key: KeyType, value: T) {
        mediator.send(key: key, value: value)
    }
}
