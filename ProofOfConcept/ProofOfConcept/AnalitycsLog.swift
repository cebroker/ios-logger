//
//  AnalitycsLog.swift
//  ProofOfConcept
//
//  Created by Carlos Pava on 9/24/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation
import Logger

class AnalitycsLog : RegisterLogType{
    func send(log: Log) {
        debugPrint(log.toString())
    }
}


