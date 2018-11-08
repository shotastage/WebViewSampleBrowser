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
    
    private var urlBarHeight: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView(frame: CGRect(x: 0,
                                          y: urlBarHeight + UIApplication.shared.windows[0].safeAreaInsets.top,
                                          width: self.view.bounds.size.width,
                                          height: self.view.bounds.size.height))
        
        webView.allowsBackForwardNavigationGestures = true
        
        
        let initialURL: String = "https://google.co.jp/"
        
        let encodedUrlString = initialURL.addingPercentEncoding(withAllowedCharacters:NSCharacterSet.urlQueryAllowed)
        
        let url = URL(string: encodedUrlString!)
        let request = NSURLRequest(url: url!)
        
        webView.load(request as URLRequest)
        
        
        self.view.addSubview(webView)
        provideURLBar(height: urlBarHeight)
        provideToolbar()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



extension ViewController {

    @objc func back(sender: UIButton){
        self.webView.goBack()
    }
    
    @objc func forward(sender: UIButton){
        self.webView.goForward()
    }
    
    @objc func share(sender: UIButton) {
        // Share
        provideShareMenu(url: webView.url!)
    }
}
