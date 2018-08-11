//
//  PreferencesWindow.swift
//  CoffeeBar
//
//  Created by Tim Holmes on 8/10/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

import Cocoa

class PreferencesWindow: NSWindowController {
    @IBOutlet weak var cityTextField: NSTextField!
    
//    override var windowNibName : String! {
//        return "PreferencesWindow"
//    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
        
        self.window?.center()
        self.window?.makeKeyAndOrderFront(nil)
        NSApp.activate(ignoringOtherApps: true)
    }
}

