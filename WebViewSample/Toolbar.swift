//
//  Toolbar.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/07.
//  Copyright © 2018-2019 Shota Shimazu. All rights reserved.
//

import UIKit


extension ViewController {
    func provideToolbar() {
        
        var toolbarHeight: CGFloat = 40
        
        /// Safe area calculation
        if UIApplication.shared.windows[0].safeAreaInsets.bottom != 0 {
            toolbarHeight += UIApplication.shared.windows[0].safeAreaInsets.bottom
        }
        
        let toolbar = UIToolbar(frame: CGRect(
                                x: 0,
                                y: self.view.bounds.size.height - 44,
                                width: self.view.bounds.size.width,
                                height: toolbarHeight))
        
        toolbar.layer.position = CGPoint(
                                x: self.view.bounds.width / 2,
                                y: self.view.bounds.height - (toolbarHeight / 2))

        toolbar.barStyle = .default
        toolbar.tintColor = UIColor.white
        
        /// back
        let backButton = provideToolbarItem(icon: "back", action: #selector(back))
        
        /// forward
        let forwardButton = provideToolbarItem(icon: "forward", action: #selector(forward))
        
        /// share
        let tabButton = provideToolbarItem(icon: "back", action: #selector(share))
        
        /// spacer
        let flexibleItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
    
        /// Toolbar Items
        toolbar.items = [backButton, flexibleItem, forwardButton, flexibleItem, flexibleItem, tabButton]
        
        self.view.addSubview(toolbar)
    }
}


extension ViewController {
    
    private func provideToolbarItem(icon: String, action: Selector, size: CGFloat = 24) -> UIBarButtonItem {

        let newButton = UIButton(frame: CGRect(x: 0, y: 0, width: size, height: size))
        
        /// Add constraints
        newButton.widthAnchor.constraint(equalToConstant: size).isActive = true
        newButton.heightAnchor.constraint(equalToConstant: size).isActive = true
        
        /// Set Icon
        newButton.setBackgroundImage(UIImage(named: icon), for: .normal)
        
        /// Set button action
        newButton.addTarget(self, action: action, for: .touchUpInside)
        
        return UIBarButtonItem(customView: newButton)
    }
}
