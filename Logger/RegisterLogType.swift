//
//  RegisterLogType.swift
//  Logger
//
//  Created by Carlos Pava on 9/23/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation

public protocol RegisterLogType {
    func send(log: Log)
}
