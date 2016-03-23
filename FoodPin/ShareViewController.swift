//
//  ShareViewController.swift
//  FoodPin
//
//  Created by Admin on 3/23/16.
//  Copyright © 2016 Morra. All rights reserved.
//

import UIKit

class ShareViewController: UIViewController {
    
    @IBOutlet weak var backgroundImageView: UIImageView!
    
    override func viewDidLoad() {
        
        //        Membuat efek blur pada background
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        backgroundImageView.addSubview(blurEffectView)
        
    }
    
}
