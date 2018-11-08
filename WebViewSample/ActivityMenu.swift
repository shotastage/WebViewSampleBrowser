//
//  ActivityMenu.swift
//  WebViewSample
//
//  Created by Shota Shimazu on 2018/11/08.
//  Copyright © 2018 Shota Shimazu. All rights reserved.
//

import UIKit


extension ViewController {
    
    func provideShareMenu(url: URL) {
        
        let activityVC = UIActivityViewController(activityItems: [String(describing: url)], applicationActivities: nil)
        
        activityVC.popoverPresentationController?.sourceView = self.view
        
        let excludedActivityTypes = [
            UIActivity.ActivityType.postToWeibo,
            UIActivity.ActivityType.saveToCameraRoll
        ]
        
        activityVC.excludedActivityTypes = excludedActivityTypes
        
        self.present(activityVC, animated: true, completion: nil)
    }
}
