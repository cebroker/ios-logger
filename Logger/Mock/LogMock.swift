//
//  LogMock.swift
//  Logger
//
//  Created by Carlos Pava on 9/23/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

internal class LogMock: LogType {
    
    let logCategory: LogCategory
    let data: Any?
    let message: String
    let fileName: String
    let line: Int
    let functionName: String
    let date: Date
    
    internal init(logCategory: LogCategory,
                  data: Any? = nil,
                  message: String = "",
                  fileName: String,
                  line: Int,
                  functionName: String) {
        self.logCategory = logCategory
        self.data = data
        self.message = message
        self.fileName = fileName
        self.line = line
        self.functionName = functionName
        self.date = Date()
    }
    
    internal func getLogWrapper() -> LogWrapper {
        let date = self.date.toString()
        let data = "\(self.data ?? "")"
        let messageString = message.isEmpty ? "" : "message: \(message)"
        let type = self.logCategory.rawValue
        let fileName = "\(sourceFileName(filePath: self.fileName))"
        let functionName = self.functionName
        let line = String(self.line)
        
        return LogWrapper(date: date,
                          data: data,
                          type: type,
                          fileName: fileName,
                          functionName: functionName,
                          line: line,
                          message: messageString)
    }

    
    internal func toString() -> String {
        var logString = ""
        let dateString = self.date.toString()
        let messageString = message.isEmpty ? "" : "message: \(message)"
        let dataString = "\(data ?? "")"
        
        logString += "\(dateString) \(self.logCategory.rawValue): "
        logString += "[\(sourceFileName(filePath: self.fileName)): \(line) \(self.functionName)] -> "
        logString += "\(dataString) \(messageString)"
        
        return logString
    }
    
    func sourceFileName(filePath: String) -> String {
        return filePath
    }
}
