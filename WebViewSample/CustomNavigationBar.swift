//
//  CustomNavigationBar.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/08.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit
import YogaKit


class CustomNavigationBar: UIView {
    
    var cornerRadius: CGFloat = 8
    
    init() {
        super.init(frame: CGRect(
            x: 0,
            y: UIApplication.shared.windows[0].safeAreaInsets.top,
            width: (UIApplication.shared.windows[0].rootViewController?.view.bounds.size.width)!,
            height: 50
        ))
        
        provideDefaultAppearance()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        provideDefaultAppearance()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        provideDefaultAppearance()
    }
    
    
    
    private func provideDefaultAppearance() {
        self.backgroundColor = .white
        
        if cornerRadius != 0 {
            let maskPath = UIBezierPath(roundedRect: bounds,
                                        byRoundingCorners: [.topLeft, .topRight],
                                        cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
            let maskLayer = CAShapeLayer()
            maskLayer.frame = bounds
            maskLayer.path = maskPath.cgPath
            layer.mask = maskLayer
        }
    }
}
