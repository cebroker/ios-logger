//
//  LogType.swift
//  Logger
//
//  Created by Carlos Pava on 9/20/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

public protocol LogType {
    func toString() -> String
    func getLogWrapper() -> LogWrapper
    func sourceFileName(filePath: String) -> String
}
