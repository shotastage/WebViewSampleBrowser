//
//  URLBar.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/07.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


extension ViewController {
    
    func provideURLBar(height: CGFloat) {
        
        let bar: CustomNavigationBar!
        
        bar = CustomNavigationBar(frame: CGRect(
            x: 0, y: UIApplication.shared.windows[0].safeAreaInsets.top,
            width: self.view.bounds.width,
            height: height
        ))
        
        bar.backgroundColor = .red
        // bar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Times New Roman", size: 15)!]

    
        self.view.addSubview(bar)
    }

}
