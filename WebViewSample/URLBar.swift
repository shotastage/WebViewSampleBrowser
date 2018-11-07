//
//  URLBar.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/07.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


extension ViewController {
    
    func provideURLBar() {
        let bar: UIInputView!
        
        bar = UIInputView(frame: CGRect(
            x: 0, y: 0,
            width: self.view.bounds.width,
            height: 20
        ))
        
        self.view.bringSubviewToFront(bar)
    }

}
