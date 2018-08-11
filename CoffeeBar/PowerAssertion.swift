//
//  PowerAssertion.swift
//  CoffeeBar
//
//  Created by Tim Holmes on 8/10/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

// Import libraries

import CoreFoundation
import Foundation
import IOKit.pwr_mgt

enum Assertion: String {
    
    case NoSleep = "AlwaysAwake"

}

enum AssertionLevel: UInt32 {
    case off = 0
    case on = 255
}

class PowerAssertion {
    
    var assertion: IOPMAssertionID = 0
    
    init(named name: String) {_ = IOPMAssertionCreateWithName(Assertion.NoSleep.rawValue as CFString, AssertionLevel.on.rawValue, name as CFString, &assertion)
        
    }
    
    deinit {_ = IOPMAssertionRelease(assertion)}
    
}
