//
//  AppNavigationControls.swift
//  MusicTheory
//
//  Created by Avinas Udayakumar on 6/27/17.
//  Copyright © 2017 Avinas Udayakumar. All rights reserved.
//

import UIKit

class AppNavigationControls: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    override func awakeFromNib() {
        
        //customizing the navigation bar
        
        //Back button
        navigationBar.backIndicatorImage = UIImage(named: "back")
        navigationBar.backIndicatorTransitionMaskImage = UIImage(named: "back")
        
        navigationBar.isTranslucent = false
        navigationBar.barTintColor  = UIColor(hexString: Constants.ThemeColors.navBarTintcolor)
        navigationBar.tintColor = UIColor(hexString: Constants.ThemeColors.navigationTintColor)
        
        //changing the font for navigation bar
        let fontAttributes = UIFont(name:Constants.ThemeFonts.SignPainterHouseScript ,size: 30.0)
        let colorForeground = UIColor(hexString: Constants.ThemeColors.fontColor)
        navigationBar.titleTextAttributes = [NSFontAttributeName: fontAttributes!, NSForegroundColorAttributeName: colorForeground!]
        
    }
    
}
