//
//  StatusMenuController.swift
//  CoffeeBar
//
//  Created by Tim Holmes on 8/10/18.
//  Copyright © 2018 Tim Holmes. All rights reserved.
//

import Cocoa

var preferencesWindow: PreferencesWindow!

class StatusMenuController: NSObject {

    @IBOutlet weak var statusMenu: NSMenu!
    
    let statusItem1 = NSStatusBar.system.statusItem(withLength: -1)

        @IBAction func quitClicked(sender: NSMenuItem) {
        
        let event = NSApp.currentEvent!
        
        if event.type == NSEvent.EventType.rightMouseUp{
            
            NSApplication.shared.terminate(self)
            
        } else {
            
            // Left button click
            
        }
    
    }

}
