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
    
    private let mediador: LogMediator
    
    private init(){
        self.mediador = LogMediator()
    }
    
    public func addRegisterLogger(_ log: RegisterLogType) {
        self.mediador.add(registerLog: log)
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
    
        mediador.send(log: log)
    }
}
