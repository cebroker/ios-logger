//
//  ViewController.swift
//  ProofOfConcept
//
//  Created by Carlos Pava on 9/19/19.
//  Copyright © 2019 CE Broker. All rights reserved.
//

import UIKit
import Logger
class ViewController: UIViewController {

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
       
        Logger.shared.addRegisterLogger(ConsoleOSLog())
        Logger.shared.addRegisterLogger(AnalitycsLog())
        Logger.shared.debugLog(logCategory: .error, data: nil, message: "this is a message")
    }
}

