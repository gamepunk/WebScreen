//
//  SheetController.swift
//  WebScreen
//
//  Created by Billow on 2020/10/25.
//

import ScreenSaver

class SheetController: NSObject {
    
    static var shared = SheetController()
    
    @IBOutlet var window: NSWindow!
    
    @IBAction func cancelClick(_ sender: NSButton) {
        window.sheetParent?.endSheet(window!)
    }
    
    @IBAction func okClick(_ sender: NSButton) {
        window.sheetParent?.endSheet(window!)
        
    }
    
    override init() {
        super.init()
        
        let bundle = Bundle(for: SheetController.self)
        bundle.loadNibNamed("ConfigureSheet", owner: self, topLevelObjects: nil)
        
        self.window.canHide = true
        
    }
    
    
    
}
