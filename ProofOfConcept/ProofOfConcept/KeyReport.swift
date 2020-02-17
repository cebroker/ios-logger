//
//  KeyReport.swift
//  ProofOfConcept
//
//  Created by Carlos Pava on 17/02/20.
//  Copyright © 2020 CE Broker. All rights reserved.
//

import Foundation
import Logger

enum KeyReport: String, KeyType {
    case login
    case home
    
    var key: String {
        return self.rawValue
    }
}
