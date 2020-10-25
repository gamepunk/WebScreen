//
//  MainView.swift
//  WebScreen
//
//  Created by Billow on 2020/10/25.
//

import ScreenSaver
import WebKit

class MainView: ScreenSaverView {
    
    var webView: WKWebView!
    
    let sheet = SheetController.shared
    
    override init?(frame: NSRect, isPreview: Bool) {
        super.init(frame: frame, isPreview: isPreview)
        
        configWebView()
    }
    
    func configWebView() {
        webView = WKWebView(frame: frame)
        webView.canDrawConcurrently = false
        self.addSubview(webView)
        let resourcePath = Bundle(for: type(of: self)).path(forResource: "resource", ofType: nil)!
        let resourceURL = URL(fileURLWithPath: resourcePath, isDirectory: true)
        let indexURL = URL(fileURLWithPath: resourcePath + "/index.html", isDirectory: false)
        webView.loadFileURL(indexURL, allowingReadAccessTo: resourceURL)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    override var hasConfigureSheet: Bool {
        return true
    }
    
    override var configureSheet: NSWindow? {
        return sheet.window
    }

}
