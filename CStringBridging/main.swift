//
//  main.swift
//  CStringBridging
//
//  Created by Tim Ekl on 2017.12.07.
//  Copyright © 2017 Tim Ekl. All rights reserved.
//

import Foundation

let swiftString = StringCreator.doubleBridgedString()!
print("value of \(type(of: swiftString)) is \"\(swiftString)\"")
