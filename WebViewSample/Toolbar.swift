//
//  Toolbar.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/07.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


extension ViewController {
    func provideToolbar() {
        let toolbar = UIToolbar(
            frame: CGRect(x: 0, y: self.view.bounds.size.height - 44,
                          width:self.view.bounds.size.width,
                          height:40.0))
        toolbar.layer.position = CGPoint(x: self.view.bounds.width / 2, y: self.view.bounds.height - 20.0)
        toolbar.barStyle = .default
        toolbar.tintColor = UIColor.white
        
        // back
        let backBtn = provideToolbarItem(icon: "back", action: #selector(back))
        
        // forward
        let forwardBtn = provideToolbarItem(icon: "forward", action: #selector(forward))
        
        // share
        let tabBtn = provideToolbarItem(icon: "back", action: #selector(share))
        
        // spacer
        let flexibleItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
    
        // Toolbar Items
        toolbar.items = [backBtn, flexibleItem, forwardBtn, flexibleItem, flexibleItem, tabBtn]
        self.view.addSubview(toolbar)
    }
    
    
    private func provideToolbarItem(icon: String, action: Selector, size: CGFloat = 24) -> UIBarButtonItem {
        
        let newButton = UIButton(frame: CGRect(x: 0, y: 0, width: size, height: size))
        newButton.widthAnchor.constraint(equalToConstant: size).isActive = true
        newButton.heightAnchor.constraint(equalToConstant: size).isActive = true
        newButton.setBackgroundImage(UIImage(named: icon), for: .normal)
        newButton.addTarget(self, action: action, for: .touchUpInside)
        return UIBarButtonItem(customView: newButton)
        
    }
}
