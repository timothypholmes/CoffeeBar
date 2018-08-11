//
//  AppDelegate.swift
//  CoffeeBar
//
//  Created by Tim Holmes on 8/7/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

import Cocoa
import CoreFoundation
import Foundation
import IOKit.pwr_mgt

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {
    
//  Define variables
    
    var iconOff: NSImage!
    var iconOn: NSImage!
    var statusItem: NSStatusItem!
    var powerAssertion: PowerAssertion!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        
       // statusItem.title = "CoffeeBar"
       // statusItem.menu = statusMenu
        
//  Define the image when off
        
        iconOff = NSImage(named: NSImage.Name(rawValue: "coffeeBarOff"))
        
//        Uncomment for template use
//        iconOff.isTemplate = true
        
//  Define the image when on
        
        iconOn = NSImage(named: NSImage.Name(rawValue: "coffeeBarOn"))
        
//        Uncomment for template use
//        iconOn.isTemplate = true
        
        statusItem = NSStatusBar.system.statusItem(withLength: -1)
        statusItem.image = iconOff
        statusItem.action = #selector(AppDelegate.togglePowerAssertion)
    }
    
    func applicationWillTerminate(_ aNotification: Notification) {
    }
    
    @objc func togglePowerAssertion() {
        if statusItem.image == iconOff {
            
            powerAssertion = PowerAssertion(named: "coffeeUp")
            statusItem.image = iconOn
            
        } else {
            
            powerAssertion = nil
            statusItem.image = iconOff
            
        }
    }
}


