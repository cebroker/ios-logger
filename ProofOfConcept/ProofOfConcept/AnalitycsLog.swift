//
//  AnalitycsLog.swift
//  ProofOfConcept
//
//  Created by Carlos Pava on 9/24/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import Foundation
import Logger

class AnalitycsLog: RegisterLog {
    public override init() { }

    override func send(log: Log) {
        debugPrint(log.toString())
    }

    override func send<T>(key: KeyType, value: T) {
        print([key.key: value])
    }
}


