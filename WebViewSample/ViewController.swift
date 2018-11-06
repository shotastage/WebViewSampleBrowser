//
//  ViewController.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/07.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, WKUIDelegate {

    private var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: CGRect(x: 0,
                                          y: 0,
                                          width: self.view.bounds.size.width,
                                          height: self.view.bounds.size.height))
        
        webView.allowsBackForwardNavigationGestures = true
        
        
        let initialURL: String = "https://twitter.com/"
        
        let encodedUrlString = initialURL.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
        
        let url = URL(string: encodedUrlString!)
        let request = NSURLRequest(url: url!)
        
        webView.load(request as URLRequest)
        
        
        self.view.addSubview(webView)
        provideURLBar()

    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



extension ViewController {
    
    fileprivate func provideURLBar() {
        let bar: UIInputView!
        
        bar = UIInputView(frame: CGRect(
            x: 0, y: 0,
            width: self.view.bounds.width,
            height: 20
        ))
        
        self.view.bringSubviewToFront(bar)
    }
}
